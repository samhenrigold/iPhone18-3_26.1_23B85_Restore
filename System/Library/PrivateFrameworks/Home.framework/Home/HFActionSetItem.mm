@interface HFActionSetItem
+ (BOOL)_value:(id)_value isApproximatelyEqualToValue:(id)value forMinimumValue:(id)minimumValue maximumValue:(id)maximumValue;
+ (id)_primaryStateForActionSet:(id)set valueSource:(id)source logger:(id)logger fastInitialUpdate:(BOOL)update;
+ (id)_valuesAtTargetStateForCharacteristics:(id)characteristics targetValuesKeyedByCharacteristicIdentifier:(id)identifier valueSource:(id)source actionSet:(id)set logger:(id)logger;
+ (id)_valuesAtTargetStateForMediaActions:(id)actions targetValuesKeyedByCharacteristicIdentifier:(id)identifier valueSource:(id)source actionSet:(id)set logger:(id)logger;
+ (id)_valuesAtTargetStateForNaturalLightActions:(id)actions valueSource:(id)source;
- (HFActionSetItem)init;
- (HFActionSetItem)initWithActionSet:(id)set actionSetItemStyle:(unint64_t)style valueSource:(id)source;
- (NSString)description;
- (id)_mostCommonRoomForActionSet:(id)set;
- (id)_subclass_updateWithOptions:(id)options;
- (id)actionSetOperation:(id)operation errorFromError:(id)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)executeActionSet;
- (id)rooms;
- (id)turnOffActionSet;
- (void)setServiceLikeItem:(id)item;
@end

@implementation HFActionSetItem

- (HFActionSetItem)initWithActionSet:(id)set actionSetItemStyle:(unint64_t)style valueSource:(id)source
{
  setCopy = set;
  sourceCopy = source;
  v14.receiver = self;
  v14.super_class = HFActionSetItem;
  v11 = [(HFActionSetItem *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_actionSet, set);
    v12->_actionSetItemStyle = style;
    objc_storeStrong(&v12->_valueSource, source);
  }

  return v12;
}

- (HFActionSetItem)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithActionSet_actionSetItemStyle_valueSource_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFActionSetItem.m" lineNumber:70 description:{@"%s is unavailable; use %@ instead", "-[HFActionSetItem init]", v5}];

  return 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  actionSet = [(HFActionSetItem *)self actionSet];
  actionSetItemStyle = [(HFActionSetItem *)self actionSetItemStyle];
  valueSource = [(HFActionSetItem *)self valueSource];
  v8 = [v4 initWithActionSet:actionSet actionSetItemStyle:actionSetItemStyle valueSource:valueSource];

  serviceLikeItem = [(HFActionSetItem *)self serviceLikeItem];
  [v8 setServiceLikeItem:serviceLikeItem];

  [v8 copyLatestResultsFromItem:self];
  return v8;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  actionSet = [(HFActionSetItem *)self actionSet];
  hf_prettyDescription = [actionSet hf_prettyDescription];
  latestResults = [(HFItem *)self latestResults];
  v9 = [v3 stringWithFormat:@"<%@: %p, %@ %@>", v5, self, hf_prettyDescription, latestResults];

  return v9;
}

- (void)setServiceLikeItem:(id)item
{
  if (self->_serviceLikeItem != item)
  {
    itemCopy = item;
    v5 = [HFActionSetValueSource alloc];
    actionSet = [(HFActionSetItem *)self actionSet];
    v9 = [(HFActionSetValueSource *)v5 initWithActionSet:actionSet];

    v7 = [itemCopy copyWithValueSource:v9];
    serviceLikeItem = self->_serviceLikeItem;
    self->_serviceLikeItem = v7;
  }
}

- (id)_subclass_updateWithOptions:(id)options
{
  optionsCopy = options;
  actionSet = [(HFActionSetItem *)self actionSet];
  v6 = [optionsCopy objectForKeyedSubscript:HFItemUpdateOptionLogger];
  v7 = [optionsCopy objectForKeyedSubscript:HFItemUpdateOptionFastInitialUpdate];
  bOOLValue = [v7 BOOLValue];

  if (actionSet)
  {
    v39 = bOOLValue;
    v40 = v6;
    v9 = objc_alloc_init(MEMORY[0x277D2C900]);
    v10 = objc_alloc_init(HFMutableItemUpdateOutcome);
    [(HFMutableItemUpdateOutcome *)v10 setObject:&unk_282525128 forKeyedSubscript:@"controlSummaryStyle"];
    name = [actionSet name];

    if (name)
    {
      name2 = [actionSet name];
      [(HFMutableItemUpdateOutcome *)v10 setObject:name2 forKeyedSubscript:@"title"];
    }

    else
    {
      [(HFMutableItemUpdateOutcome *)v10 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hidden"];
    }

    actionSet2 = [(HFActionSetItem *)self actionSet];
    hf_iconDescriptor = [actionSet2 hf_iconDescriptor];

    if (hf_iconDescriptor)
    {
      [(HFMutableItemUpdateOutcome *)v10 setObject:hf_iconDescriptor forKeyedSubscript:@"icon"];
    }

    actionSet3 = [(HFActionSetItem *)self actionSet];
    hf_iconTintColor = [actionSet3 hf_iconTintColor];

    if (hf_iconTintColor)
    {
      [(HFMutableItemUpdateOutcome *)v10 setObject:hf_iconTintColor forKeyedSubscript:@"tintColor"];
    }

    v20 = [(HFActionSetItem *)self _mostCommonRoomForActionSet:actionSet];
    v21 = v20;
    if (v20)
    {
      uniqueIdentifier = [v20 uniqueIdentifier];
      [(HFMutableItemUpdateOutcome *)v10 setObject:uniqueIdentifier forKeyedSubscript:@"roomIdentifier"];
    }

    actions = [actionSet actions];
    v24 = [actions count];

    if (!v24)
    {
      [(HFMutableItemUpdateOutcome *)v10 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hidden"];
    }

    v25 = MEMORY[0x277CCABB0];
    actions2 = [actionSet actions];
    v27 = [v25 numberWithBool:{objc_msgSend(actions2, "na_any:", &__block_literal_global_225)}];
    [(HFMutableItemUpdateOutcome *)v10 setObject:v27 forKeyedSubscript:@"actionRequiresDeviceUnlock"];

    actionSetItemStyle = [(HFActionSetItem *)self actionSetItemStyle];
    v29 = &qword_20DD97000;
    if (actionSetItemStyle - 1 >= 2)
    {
      if (!actionSetItemStyle)
      {
        [(HFMutableItemUpdateOutcome *)v10 setObject:&unk_282525140 forKeyedSubscript:@"state"];
        [v9 finishWithResult:v10];
      }
    }

    else
    {
      v30 = objc_opt_class();
      valueSource = [(HFActionSetItem *)self valueSource];
      v32 = [v30 _primaryStateForActionSet:actionSet valueSource:valueSource logger:v40 fastInitialUpdate:v39];
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __47__HFActionSetItem__subclass_updateWithOptions___block_invoke_27;
      v50[3] = &unk_277E019B8;
      v51 = v10;
      selfCopy = self;
      v53 = actionSet;
      v54 = v9;
      v33 = [v32 addCompletionBlock:v50];

      v29 = &qword_20DD97000;
    }

    v44 = MEMORY[0x277D85DD0];
    v45 = v29[51];
    v34 = v45;
    v46 = __47__HFActionSetItem__subclass_updateWithOptions___block_invoke_2;
    v47 = &unk_277DF9660;
    selfCopy2 = self;
    v49 = optionsCopy;
    v35 = __47__HFActionSetItem__subclass_updateWithOptions___block_invoke_2(&v44);
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = v34;
    v41[2] = __47__HFActionSetItem__subclass_updateWithOptions___block_invoke_3;
    v41[3] = &unk_277DF3068;
    v42 = v35;
    v43 = v10;
    v36 = v10;
    v37 = v35;
    v15 = [v9 flatMap:v41];

    v6 = v40;
  }

  else
  {
    NSLog(&cfstr_ActionsetMustB.isa);
    v13 = MEMORY[0x277D2C900];
    v14 = [MEMORY[0x277CCA9B8] hf_errorWithCode:30];
    v15 = [v13 futureWithError:v14];
  }

  return v15;
}

uint64_t __47__HFActionSetItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 characteristic];
    v4 = [v3 requiresDeviceUnlock];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __47__HFActionSetItem__subclass_updateWithOptions___block_invoke_27(id *a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  if (v15)
  {
    [a1[4] setObject:v15 forKeyedSubscript:@"state"];
  }

  v6 = [a1[5] valueSource];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [a1[5] valueSource];
    v9 = [v8 cachedErrorForExecutionOfActionSet:a1[6]];

    if (v9)
    {
      v10 = _HFLocalizedStringWithDefaultValue(@"HFActionSetItemDescriptionExecutionFailure", @"HFActionSetItemDescriptionExecutionFailure", 1);

      if (v10)
      {
        [a1[4] setObject:v10 forKeyedSubscript:@"description"];
      }
    }
  }

  v11 = [MEMORY[0x277CBEB58] set];
  v12 = [a1[6] hf_affectedCharacteristics];
  [v11 unionSet:v12];
  v13 = [a1[6] hf_affectedMediaSessions];
  [v11 unionSet:v13];
  v14 = [a1[6] hf_affectedProfiles];
  [v11 unionSet:v14];
  if ([v11 count])
  {
    [a1[4] setObject:v11 forKeyedSubscript:@"dependentHomeKitObjects"];
  }

  [a1[7] finishWithResult:a1[4]];
}

id __47__HFActionSetItem__subclass_updateWithOptions___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) serviceLikeItem];

  if (v2)
  {
    v3 = [HFActionSetBuilder alloc];
    v4 = [*(a1 + 32) actionSet];
    v5 = [*(a1 + 32) actionSet];
    v6 = objc_msgSend_home(v5);
    v7 = [(HFActionSetBuilder *)v3 initWithExistingObject:v4 inHome:v6];

    v8 = [[HFActionSetValueSource alloc] initWithActionSetBuilder:v7];
    v9 = [HFServiceActionItem alloc];
    v10 = [*(a1 + 32) actionSet];
    v11 = objc_msgSend_home(v10);
    v12 = [*(a1 + 32) serviceLikeItem];
    v13 = [v12 copyWithValueSource:v8];
    v14 = [(HFServiceActionItem *)v9 initWithHome:v11 containingItem:v13];

    v15 = [*(a1 + 32) actionSet];
    v16 = [v15 actions];
    [(HFServiceActionItem *)v14 setActions:v16];

    v17 = [*(a1 + 40) mutableCopy];
    v18 = MEMORY[0x277CBEB98];
    v19 = [(HFAbstractBaseActionSetBuilder *)v7 actions];
    v20 = [v18 setWithArray:v19];
    [v17 setObject:v20 forKeyedSubscript:HFItemUpdateOptionActionBuilders];

    v21 = [v17 copy];
    v22 = [(HFItem *)v14 updateWithOptions:v21];
  }

  else
  {
    v23 = MEMORY[0x277D2C900];
    v24 = [HFItemUpdateOutcome alloc];
    v7 = [(HFItemUpdateOutcome *)v24 initWithResults:MEMORY[0x277CBEC10]];
    v22 = [v23 futureWithResult:v7];
  }

  return v22;
}

id __47__HFActionSetItem__subclass_updateWithOptions___block_invoke_3(uint64_t a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__HFActionSetItem__subclass_updateWithOptions___block_invoke_4;
  v4[3] = &unk_277DF43A8;
  v1 = *(a1 + 32);
  v5 = *(a1 + 40);
  v2 = [v1 flatMap:v4];

  return v2;
}

id __47__HFActionSetItem__subclass_updateWithOptions___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"description"];

  if (!v4)
  {
    v5 = [v3 objectForKeyedSubscript:@"description"];
    [*(a1 + 32) setObject:v5 forKeyedSubscript:@"description"];
  }

  v6 = [MEMORY[0x277D2C900] futureWithResult:*(a1 + 32)];

  return v6;
}

- (id)_mostCommonRoomForActionSet:(id)set
{
  v22 = *MEMORY[0x277D85DE8];
  setCopy = set;
  rooms = [(HFActionSetItem *)self rooms];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [rooms countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = 0;
    v10 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(rooms);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [rooms countForObject:v12];
        if (v13 > v8)
        {
          v14 = v13;
          v15 = v12;

          v8 = v14;
          v9 = v15;
        }
      }

      v7 = [rooms countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (BOOL)_value:(id)_value isApproximatelyEqualToValue:(id)value forMinimumValue:(id)minimumValue maximumValue:(id)maximumValue
{
  _valueCopy = _value;
  valueCopy = value;
  minimumValueCopy = minimumValue;
  maximumValueCopy = maximumValue;
  objc_opt_class();
  v13 = minimumValueCopy;
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  objc_opt_class();
  v16 = maximumValueCopy;
  if (objc_opt_isKindOfClass())
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  if (v15)
  {
    v19 = v18 == 0;
  }

  else
  {
    v19 = 1;
  }

  if (v19)
  {
    goto LABEL_21;
  }

  objc_opt_class();
  v20 = _valueCopy;
  if (objc_opt_isKindOfClass())
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v22 = v21;

  objc_opt_class();
  v23 = valueCopy;
  if (objc_opt_isKindOfClass())
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  v25 = v24;

  if (!v22 || !v25)
  {

LABEL_21:
    v33 = [_valueCopy isEqual:valueCopy];
    goto LABEL_22;
  }

  [v22 floatValue];
  v27 = v26;
  [v25 floatValue];
  v29 = vabds_f32(v27, v28);
  [v18 floatValue];
  v31 = v30;
  [v15 floatValue];
  v33 = v29 <= ((v31 - v32) * 0.02);

LABEL_22:
  return v33;
}

+ (id)_valuesAtTargetStateForCharacteristics:(id)characteristics targetValuesKeyedByCharacteristicIdentifier:(id)identifier valueSource:(id)source actionSet:(id)set logger:(id)logger
{
  identifierCopy = identifier;
  sourceCopy = source;
  setCopy = set;
  loggerCopy = logger;
  v16 = MEMORY[0x277CBEAA8];
  characteristicsCopy = characteristics;
  date = [v16 date];
  lastExecutionDate = [setCopy lastExecutionDate];
  [date timeIntervalSinceDate:lastExecutionDate];
  v21 = v20 < 60.0;

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __131__HFActionSetItem__valuesAtTargetStateForCharacteristics_targetValuesKeyedByCharacteristicIdentifier_valueSource_actionSet_logger___block_invoke;
  v28[3] = &unk_277E01A08;
  v29 = sourceCopy;
  v30 = identifierCopy;
  v32 = setCopy;
  selfCopy = self;
  v34 = v21;
  v31 = loggerCopy;
  v22 = setCopy;
  v23 = loggerCopy;
  v24 = identifierCopy;
  v25 = sourceCopy;
  v26 = [characteristicsCopy na_map:v28];

  return v26;
}

id __131__HFActionSetItem__valuesAtTargetStateForCharacteristics_targetValuesKeyedByCharacteristicIdentifier_valueSource_actionSet_logger___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) readValuesForCharacteristics:a2];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __131__HFActionSetItem__valuesAtTargetStateForCharacteristics_targetValuesKeyedByCharacteristicIdentifier_valueSource_actionSet_logger___block_invoke_2;
  v11[3] = &unk_277E019E0;
  v4 = *(a1 + 40);
  v5 = *(a1 + 64);
  v14 = *(a1 + 72);
  v6 = *(a1 + 48);
  *&v7 = *(a1 + 56);
  *(&v7 + 1) = v5;
  *&v8 = v4;
  *(&v8 + 1) = v6;
  v12 = v8;
  v13 = v7;
  v9 = [v3 flatMap:v11];

  return v9;
}

id __131__HFActionSetItem__valuesAtTargetStateForCharacteristics_targetValuesKeyedByCharacteristicIdentifier_valueSource_actionSet_logger___block_invoke_2(uint64_t a1, void *a2)
{
  v50 = *MEMORY[0x277D85DE8];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v34 = a2;
  obj = [v34 allCharacteristics];
  v35 = [obj countByEnumeratingWithState:&v37 objects:v49 count:16];
  if (!v35)
  {
    v32 = 0;
    goto LABEL_25;
  }

  v32 = 0;
  v33 = *v38;
  *&v3 = 138413058;
  v30 = v3;
  do
  {
    v4 = 0;
    do
    {
      if (*v38 != v33)
      {
        objc_enumerationMutation(obj);
      }

      v5 = *(*(&v37 + 1) + 8 * v4);
      v6 = [v5 characteristicType];
      v7 = [v34 responseForCharacteristicType:v6];
      v8 = [v7 value];

      v9 = *(a1 + 32);
      v10 = [v5 uniqueIdentifier];
      v11 = [v9 objectForKeyedSubscript:v10];

      if (v11)
      {
        if (!v8)
        {
          goto LABEL_12;
        }
      }

      else
      {
        NSLog(&cfstr_WeGotAReadResp.isa);
        if (!v8)
        {
          goto LABEL_12;
        }
      }

      v12 = *(a1 + 56);
      v13 = [v5 metadata];
      v14 = [v13 minimumValue];
      v15 = [v5 metadata];
      v16 = [v15 maximumValue];
      LODWORD(v12) = [v12 _value:v8 isApproximatelyEqualToValue:v11 forMinimumValue:v14 maximumValue:v16];

      if (v12)
      {
        ++v32;
        goto LABEL_17;
      }

LABEL_12:
      if (*(a1 + 64) == 1)
      {
        v17 = *(a1 + 40);
        if (v17)
        {
          state.opaque[0] = 0;
          state.opaque[1] = 0;
          v18 = [v17 loggerActivity];
          os_activity_scope_enter(v18, &state);

          v19 = HFLogForCategory(0x2CuLL);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v20 = [*(a1 + 48) name];
            v21 = [v5 hf_prettyDescription];
            *buf = v30;
            v42 = v20;
            v43 = 2112;
            v44 = v11;
            v45 = 2112;
            v46 = v8;
            v47 = 2112;
            v48 = v21;
            _os_log_impl(&dword_20D9BF000, v19, OS_LOG_TYPE_DEFAULT, "Action set %@ isn't on because targetValue = %@, but readValue = %@ for characteristic %@", buf, 0x2Au);
          }

          os_activity_scope_leave(&state);
        }

        else
        {
          v22 = HFLogForCategory(0x2CuLL);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v23 = [*(a1 + 48) name];
            v24 = [v5 hf_prettyDescription];
            *buf = v30;
            v42 = v23;
            v43 = 2112;
            v44 = v11;
            v45 = 2112;
            v46 = v8;
            v47 = 2112;
            v48 = v24;
            _os_log_impl(&dword_20D9BF000, v22, OS_LOG_TYPE_DEFAULT, "Action set %@ isn't on because targetValue = %@, but readValue = %@ for characteristic %@", buf, 0x2Au);
          }
        }
      }

LABEL_17:

      ++v4;
    }

    while (v35 != v4);
    v25 = [obj countByEnumeratingWithState:&v37 objects:v49 count:16];
    v35 = v25;
  }

  while (v25);
LABEL_25:

  v26 = MEMORY[0x277D2C900];
  v27 = [MEMORY[0x277CCABB0] numberWithInteger:v32];
  v28 = [v26 futureWithResult:v27];

  return v28;
}

+ (id)_valuesAtTargetStateForMediaActions:(id)actions targetValuesKeyedByCharacteristicIdentifier:(id)identifier valueSource:(id)source actionSet:(id)set logger:(id)logger
{
  setCopy = set;
  loggerCopy = logger;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __128__HFActionSetItem__valuesAtTargetStateForMediaActions_targetValuesKeyedByCharacteristicIdentifier_valueSource_actionSet_logger___block_invoke;
  v16[3] = &unk_277E01A80;
  v17 = loggerCopy;
  v18 = setCopy;
  selfCopy = self;
  v12 = setCopy;
  v13 = loggerCopy;
  v14 = [actions na_flatMap:v16];

  return v14;
}

id __128__HFActionSetItem__valuesAtTargetStateForMediaActions_targetValuesKeyedByCharacteristicIdentifier_valueSource_actionSet_logger___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 mediaProfiles];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __128__HFActionSetItem__valuesAtTargetStateForMediaActions_targetValuesKeyedByCharacteristicIdentifier_valueSource_actionSet_logger___block_invoke_2;
  v8[3] = &unk_277E01A58;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = v3;
  v12 = *(a1 + 48);
  v5 = v3;
  v6 = [v4 na_map:v8];

  return v6;
}

id __128__HFActionSetItem__valuesAtTargetStateForMediaActions_targetValuesKeyedByCharacteristicIdentifier_valueSource_actionSet_logger___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277D2C900];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __128__HFActionSetItem__valuesAtTargetStateForMediaActions_targetValuesKeyedByCharacteristicIdentifier_valueSource_actionSet_logger___block_invoke_3;
  v12[3] = &unk_277E01A30;
  v13 = v3;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  *&v7 = *(a1 + 48);
  *(&v7 + 1) = *(a1 + 56);
  *&v8 = v5;
  *(&v8 + 1) = v6;
  v14 = v8;
  v15 = v7;
  v9 = v3;
  v10 = [v4 futureWithBlock:v12];

  return v10;
}

void __128__HFActionSetItem__valuesAtTargetStateForMediaActions_targetValuesKeyedByCharacteristicIdentifier_valueSource_actionSet_logger___block_invoke_3(uint64_t a1, void *a2)
{
  v95 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 mediaSession];
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = [v6 loggerActivity];
    os_activity_scope_enter(v7, &v82);

    v8 = HFLogForCategory(0x2CuLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 48) name];
      v10 = [*(a1 + 32) hf_displayName];
      *buf = 138412802;
      v84 = v9;
      v85 = 2112;
      v86 = v10;
      v87 = 2112;
      v88 = v5;
      _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "Action set %@ media profile %@ media session %@", buf, 0x20u);
    }

    os_activity_scope_leave(&v82);
  }

  else
  {
    v64 = HFLogForCategory(0x2CuLL);
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
    {
      v65 = [*(a1 + 48) name];
      v66 = [*(a1 + 32) hf_displayName];
      *buf = 138412802;
      v84 = v65;
      v85 = 2112;
      v86 = v66;
      v87 = 2112;
      v88 = v5;
      _os_log_impl(&dword_20D9BF000, v64, OS_LOG_TYPE_DEFAULT, "Action set %@ media profile %@ media session %@", buf, 0x20u);
    }
  }

  v11 = [*(a1 + 56) volume];

  if (v11)
  {
    v12 = MEMORY[0x277CCABB0];
    v13 = [v5 audioControl];
    [v13 volume];
    v14 = [v12 numberWithFloat:?];

    v15 = objc_opt_class();
    v16 = MEMORY[0x277CCABB0];
    v17 = [*(a1 + 56) volume];
    [v17 floatValue];
    *&v19 = v18 / 100.0;
    v20 = [v16 numberWithFloat:v19];
    LOBYTE(v15) = [v15 _value:v20 isApproximatelyEqualToValue:v14 forMinimumValue:&unk_282525930 maximumValue:&unk_282525940];

    if ((v15 & 1) == 0)
    {
      v34 = *(a1 + 40);
      if (v34)
      {
        v35 = [v34 loggerActivity];
        os_activity_scope_enter(v35, &v82);

        v36 = HFLogForCategory(0x2CuLL);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v37 = [*(a1 + 48) name];
          v38 = [*(a1 + 32) hf_displayName];
          v39 = [*(a1 + 56) volume];
          *buf = 138413314;
          v84 = v37;
          v85 = 2112;
          v86 = v38;
          v87 = 2112;
          v88 = v5;
          v89 = 2112;
          v90 = v39;
          v91 = 2112;
          v92 = v14;
          _os_log_impl(&dword_20D9BF000, v36, OS_LOG_TYPE_DEFAULT, "Action set %@ media profile %@ media session %@ volume doesn't match (%@, %@)", buf, 0x34u);
        }

        os_activity_scope_leave(&v82);
        goto LABEL_24;
      }

      v67 = HFLogForCategory(0x2CuLL);
      if (!os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_54;
      }

      v68 = [*(a1 + 48) name];
      v71 = [*(a1 + 32) hf_displayName];
      v72 = [*(a1 + 56) volume];
      *buf = 138413314;
      v84 = v68;
      v85 = 2112;
      v86 = v71;
      v87 = 2112;
      v88 = v5;
      v89 = 2112;
      v90 = v72;
      v91 = 2112;
      v92 = v14;
      _os_log_impl(&dword_20D9BF000, v67, OS_LOG_TYPE_DEFAULT, "Action set %@ media profile %@ media session %@ volume doesn't match (%@, %@)", buf, 0x34u);

      goto LABEL_52;
    }
  }

  if (![*(a1 + 56) state])
  {
    goto LABEL_19;
  }

  v21 = [*(a1 + 56) state];
  if (v21 == 1)
  {
    if ([v5 playbackState] == 1)
    {
      goto LABEL_13;
    }

LABEL_26:
    v40 = *(a1 + 40);
    if (v40)
    {
      v41 = [v40 loggerActivity];
      os_activity_scope_enter(v41, &v82);

      v42 = HFLogForCategory(0x2CuLL);
      if (!os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
LABEL_30:

LABEL_31:
        os_activity_scope_leave(&v82);
        goto LABEL_32;
      }

      v43 = [*(a1 + 48) name];
      v44 = [*(a1 + 32) hf_displayName];
      v45 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 56), "state")}];
      v46 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "playbackState")}];
      *buf = 138413314;
      v84 = v43;
      v85 = 2112;
      v86 = v44;
      v87 = 2112;
      v88 = v5;
      v89 = 2112;
      v90 = v45;
      v91 = 2112;
      v92 = v46;
      _os_log_impl(&dword_20D9BF000, v42, OS_LOG_TYPE_DEFAULT, "Action set %@ media profile %@ media session %@ playback state doesn't match (%@, %@)", buf, 0x34u);

LABEL_29:
      goto LABEL_30;
    }

    v14 = HFLogForCategory(0x2CuLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v67 = [*(a1 + 48) name];
      v68 = [*(a1 + 32) hf_displayName];
      v69 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 56), "state")}];
      v70 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "playbackState")}];
      *buf = 138413314;
      v84 = v67;
      v85 = 2112;
      v86 = v68;
      v87 = 2112;
      v88 = v5;
      v89 = 2112;
      v90 = v69;
      v91 = 2112;
      v92 = v70;
      _os_log_impl(&dword_20D9BF000, v14, OS_LOG_TYPE_DEFAULT, "Action set %@ media profile %@ media session %@ playback state doesn't match (%@, %@)", buf, 0x34u);

LABEL_53:
LABEL_54:

      goto LABEL_24;
    }

    goto LABEL_24;
  }

  if (v21 != 2 || [v5 playbackState] == 1 || !objc_msgSend(v5, "playbackState"))
  {
    goto LABEL_26;
  }

LABEL_13:
  v22 = [*(a1 + 56) playbackArchive];

  if (v22)
  {
    v23 = [*(a1 + 56) playbackArchive];
    v24 = [v23 playbackSessionIdentifier];
    v25 = [v5 mediaUniqueIdentifier];
    v26 = [v24 isEqualToString:v25];

    if (v26)
    {
      v27 = [*(a1 + 56) playbackArchive];
      v28 = [v27 BOOLValueForOption:1];

      v29 = [v5 shuffleState];
      if ([v5 shuffleState] && ((v28 ^ (v29 == 1)) & 1) != 0)
      {
        v30 = [*(a1 + 56) playbackArchive];
        v31 = [v30 BOOLValueForOption:2];

        v32 = [v5 repeatState];
        if ([v5 repeatState] && ((v31 ^ (v32 == 1)) & 1) != 0)
        {
          goto LABEL_19;
        }

        v62 = *(a1 + 40);
        if (v62)
        {
          v63 = [v62 loggerActivity];
          os_activity_scope_enter(v63, &v82);

          v56 = HFLogForCategory(0x2CuLL);
          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
          {
            v57 = [*(a1 + 48) name];
            v58 = [*(a1 + 32) hf_displayName];
            v59 = [MEMORY[0x277CCABB0] numberWithBool:v31];
            v60 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "repeatState")}];
            *buf = 138413314;
            v84 = v57;
            v85 = 2112;
            v86 = v58;
            v87 = 2112;
            v88 = v5;
            v89 = 2112;
            v90 = v59;
            v91 = 2112;
            v92 = v60;
            v61 = "Action set %@ media profile %@ media session %@ repeat doesn't match (%@, %@)";
            goto LABEL_43;
          }

          goto LABEL_44;
        }

        v76 = HFLogForCategory(0x2CuLL);
        if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
        {
          v77 = [*(a1 + 48) name];
          v78 = [*(a1 + 32) hf_displayName];
          v79 = [MEMORY[0x277CCABB0] numberWithBool:v31];
          v80 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "repeatState")}];
          *buf = 138413314;
          v84 = v77;
          v85 = 2112;
          v86 = v78;
          v87 = 2112;
          v88 = v5;
          v89 = 2112;
          v90 = v79;
          v91 = 2112;
          v92 = v80;
          v81 = "Action set %@ media profile %@ media session %@ repeat doesn't match (%@, %@)";
          goto LABEL_61;
        }
      }

      else
      {
        v54 = *(a1 + 40);
        if (v54)
        {
          v55 = [v54 loggerActivity];
          os_activity_scope_enter(v55, &v82);

          v56 = HFLogForCategory(0x2CuLL);
          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
          {
            v57 = [*(a1 + 48) name];
            v58 = [*(a1 + 32) hf_displayName];
            v59 = [MEMORY[0x277CCABB0] numberWithBool:v28];
            v60 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "shuffleState")}];
            *buf = 138413314;
            v84 = v57;
            v85 = 2112;
            v86 = v58;
            v87 = 2112;
            v88 = v5;
            v89 = 2112;
            v90 = v59;
            v91 = 2112;
            v92 = v60;
            v61 = "Action set %@ media profile %@ media session %@ shuffle doesn't match (%@, %@)";
LABEL_43:
            _os_log_impl(&dword_20D9BF000, v56, OS_LOG_TYPE_DEFAULT, v61, buf, 0x34u);
          }

LABEL_44:

          goto LABEL_31;
        }

        v76 = HFLogForCategory(0x2CuLL);
        if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
        {
          v77 = [*(a1 + 48) name];
          v78 = [*(a1 + 32) hf_displayName];
          v79 = [MEMORY[0x277CCABB0] numberWithBool:v28];
          v80 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "shuffleState")}];
          *buf = 138413314;
          v84 = v77;
          v85 = 2112;
          v86 = v78;
          v87 = 2112;
          v88 = v5;
          v89 = 2112;
          v90 = v79;
          v91 = 2112;
          v92 = v80;
          v81 = "Action set %@ media profile %@ media session %@ shuffle doesn't match (%@, %@)";
LABEL_61:
          _os_log_impl(&dword_20D9BF000, v76, OS_LOG_TYPE_DEFAULT, v81, buf, 0x34u);
        }
      }

      goto LABEL_32;
    }

    v48 = *(a1 + 40);
    if (v48)
    {
      v49 = [v48 loggerActivity];
      os_activity_scope_enter(v49, &v82);

      v42 = HFLogForCategory(0x2CuLL);
      if (!os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_30;
      }

      v43 = [*(a1 + 48) name];
      v44 = [*(a1 + 32) hf_displayName];
      v50 = [*(a1 + 56) playbackArchive];
      v51 = [v50 playbackSessionIdentifier];
      v52 = [v5 mediaUniqueIdentifier];
      v53 = [*(a1 + 56) playbackArchive];
      *buf = 138413570;
      v84 = v43;
      v85 = 2112;
      v86 = v44;
      v87 = 2112;
      v88 = v5;
      v89 = 2112;
      v90 = v51;
      v91 = 2112;
      v92 = v52;
      v93 = 2112;
      v94 = v53;
      _os_log_impl(&dword_20D9BF000, v42, OS_LOG_TYPE_DEFAULT, "Action set %@ media profile %@ media session %@ playback archive doesn't match (%@, %@). mediaAction.playbackArchive %@", buf, 0x3Eu);

      goto LABEL_29;
    }

    v14 = HFLogForCategory(0x2CuLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v67 = [*(a1 + 48) name];
      v68 = [*(a1 + 32) hf_displayName];
      v71 = [*(a1 + 56) playbackArchive];
      v73 = [v71 playbackSessionIdentifier];
      v74 = [v5 mediaUniqueIdentifier];
      v75 = [*(a1 + 56) playbackArchive];
      *buf = 138413570;
      v84 = v67;
      v85 = 2112;
      v86 = v68;
      v87 = 2112;
      v88 = v5;
      v89 = 2112;
      v90 = v73;
      v91 = 2112;
      v92 = v74;
      v93 = 2112;
      v94 = v75;
      _os_log_impl(&dword_20D9BF000, v14, OS_LOG_TYPE_DEFAULT, "Action set %@ media profile %@ media session %@ playback archive doesn't match (%@, %@). mediaAction.playbackArchive %@", buf, 0x3Eu);

LABEL_52:
      goto LABEL_53;
    }

LABEL_24:

LABEL_32:
    v33 = 0;
    goto LABEL_33;
  }

LABEL_19:
  v33 = 1;
LABEL_33:
  v47 = [MEMORY[0x277CCABB0] numberWithBool:v33];
  [v4 finishWithResult:v47];
}

+ (id)_valuesAtTargetStateForNaturalLightActions:(id)actions valueSource:(id)source
{
  sourceCopy = source;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __74__HFActionSetItem__valuesAtTargetStateForNaturalLightActions_valueSource___block_invoke;
  v9[3] = &unk_277E01AA8;
  v10 = sourceCopy;
  v6 = sourceCopy;
  v7 = [actions na_map:v9];

  return v7;
}

id __74__HFActionSetItem__valuesAtTargetStateForNaturalLightActions_valueSource___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 isNaturalLightingEnabled];
  v5 = *(a1 + 32);
  v6 = &unk_28253EC38;
  if ([v5 conformsToProtocol:v6])
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = [v3 lightProfile];

  v10 = [v8 isNaturalLightingEnabledForProfile:v9];
  v11 = MEMORY[0x277D2C900];
  v12 = [MEMORY[0x277CCABB0] numberWithInt:v4 ^ v10 ^ 1u];
  v13 = [v11 futureWithResult:v12];

  return v13;
}

id __56__HFActionSetItem__valuesAtTargetStateForMatterActions___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [a2 commands];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    LOBYTE(v6) = 1;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if (v6)
        {
          v6 = [*(*(&v12 + 1) + 8 * i) expectedValuesMatchCurrentState];
        }

        else
        {
          v6 = 0;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 1;
  }

  v8 = MEMORY[0x277D2C900];
  v9 = [MEMORY[0x277CCABB0] numberWithBool:v6];
  v10 = [v8 futureWithResult:v9];

  return v10;
}

+ (id)_primaryStateForActionSet:(id)set valueSource:(id)source logger:(id)logger fastInitialUpdate:(BOOL)update
{
  updateCopy = update;
  v72 = *MEMORY[0x277D85DE8];
  setCopy = set;
  sourceCopy = source;
  loggerCopy = logger;
  if (updateCopy)
  {
    v13 = MEMORY[0x277D2C900];
    v14 = &unk_282525158;
LABEL_41:
    v45 = [v13 futureWithResult:v14];
    goto LABEL_44;
  }

  actions = [setCopy actions];
  v16 = [actions count];

  if (!v16)
  {
    v13 = MEMORY[0x277D2C900];
    v14 = &unk_282525170;
    goto LABEL_41;
  }

  selfCopy = self;
  v57 = loggerCopy;
  v58 = sourceCopy;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  [MEMORY[0x277CBEB18] array];
  v60 = v59 = setCopy;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  actions2 = [setCopy actions];
  v18 = [actions2 countByEnumeratingWithState:&v67 objects:v71 count:16];
  if (!v18)
  {
    v20 = 0;
    goto LABEL_43;
  }

  v19 = v18;
  v20 = 0;
  v21 = *v68;
  do
  {
    for (i = 0; i != v19; ++i)
    {
      if (*v68 != v21)
      {
        objc_enumerationMutation(actions2);
      }

      v23 = *(*(&v67 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v24 = v23;
        characteristic = [v24 characteristic];
        v26 = objc_msgSend_service(characteristic);
        uniqueIdentifier = [v26 uniqueIdentifier];

        if (characteristic)
        {
          v28 = uniqueIdentifier == 0;
        }

        else
        {
          v28 = 1;
        }

        if (!v28)
        {
          targetValue = [v24 targetValue];

          if (targetValue)
          {
            v65 = [dictionary na_objectForKey:uniqueIdentifier withDefaultValue:&__block_literal_global_114_2];
            [v65 addObject:characteristic];
            targetValue2 = [v24 targetValue];
            [characteristic uniqueIdentifier];
            v31 = v19;
            v32 = v21;
            v33 = v20 + 1;
            v35 = v34 = actions2;
            [dictionary2 setObject:targetValue2 forKeyedSubscript:v35];

            actions2 = v34;
            v20 = v33;
            v21 = v32;
            v19 = v31;
          }
        }
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          v36 = v23;
          if (objc_opt_isKindOfClass())
          {
            v37 = v36;
          }

          else
          {
            v37 = 0;
          }

          v24 = v37;

          if ([v24 state] || (objc_msgSend(v24, "volume"), v38 = objc_claimAutoreleasedReturnValue(), v38, v38))
          {
            mediaProfiles = [v24 mediaProfiles];
            v20 += [mediaProfiles count];
          }

          [array addObject:v24];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_opt_class();
            v40 = v23;
            if (objc_opt_isKindOfClass())
            {
              v41 = v40;
            }

            else
            {
              v41 = 0;
            }

            v24 = v41;

            ++v20;
            v42 = array2;
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              continue;
            }

            objc_opt_class();
            v43 = v23;
            if (objc_opt_isKindOfClass())
            {
              v44 = v43;
            }

            else
            {
              v44 = 0;
            }

            v24 = v44;

            ++v20;
            v42 = v60;
          }

          [v42 addObject:v24];
        }
      }
    }

    v19 = [actions2 countByEnumeratingWithState:&v67 objects:v71 count:16];
  }

  while (v19);
LABEL_43:

  array3 = [MEMORY[0x277CBEB18] array];
  allValues = [dictionary allValues];
  loggerCopy = v57;
  sourceCopy = v58;
  setCopy = v59;
  v48 = [selfCopy _valuesAtTargetStateForCharacteristics:allValues targetValuesKeyedByCharacteristicIdentifier:dictionary2 valueSource:v58 actionSet:v59 logger:v57];
  [array3 addObjectsFromArray:v48];

  v49 = [selfCopy _valuesAtTargetStateForMediaActions:array targetValuesKeyedByCharacteristicIdentifier:dictionary2 valueSource:v58 actionSet:v59 logger:v57];
  [array3 addObjectsFromArray:v49];

  v50 = [selfCopy _valuesAtTargetStateForNaturalLightActions:array2 valueSource:v58];
  [array3 addObjectsFromArray:v50];

  v51 = [selfCopy _valuesAtTargetStateForMatterActions:v60];
  [array3 addObjectsFromArray:v51];

  v52 = MEMORY[0x277D2C900];
  immediateScheduler = [MEMORY[0x277D2C938] immediateScheduler];
  v54 = [v52 combineAllFutures:array3 ignoringErrors:1 scheduler:immediateScheduler];
  v66[0] = MEMORY[0x277D85DD0];
  v66[1] = 3221225472;
  v66[2] = __82__HFActionSetItem__primaryStateForActionSet_valueSource_logger_fastInitialUpdate___block_invoke_2;
  v66[3] = &__block_descriptor_40_e27___NAFuture_16__0__NSArray_8l;
  v66[4] = v20;
  v45 = [v54 flatMap:v66];

LABEL_44:

  return v45;
}

id __82__HFActionSetItem__primaryStateForActionSet_valueSource_logger_fastInitialUpdate___block_invoke_2(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v19;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        objc_opt_class();
        v10 = v9;
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
        }

        else
        {
          v11 = 0;
        }

        v12 = v11;

        if (v12)
        {
          v6 += [v12 integerValue];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  if (v6 == *(a1 + 32))
  {
    v13 = 2;
  }

  else
  {
    v13 = 1;
  }

  v14 = MEMORY[0x277D2C900];
  v15 = [MEMORY[0x277CCABB0] numberWithInteger:v13];
  v16 = [v14 futureWithResult:v15];

  return v16;
}

- (id)rooms
{
  v47 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCA940] set];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  actionSet = [(HFActionSetItem *)self actionSet];
  actions = [actionSet actions];

  obj = actions;
  v6 = [actions countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v41;
    v27 = *v41;
    do
    {
      v9 = 0;
      v28 = v7;
      do
      {
        if (*v41 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v40 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          characteristic = [v10 characteristic];
          mediaProfiles = objc_msgSend_service(characteristic);
          accessory = [mediaProfiles accessory];
          room = [accessory room];
          [v3 na_safeAddObject:room];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_25;
          }

          characteristic = v10;
          v36 = 0u;
          v37 = 0u;
          v38 = 0u;
          v39 = 0u;
          mediaProfiles = [characteristic mediaProfiles];
          v15 = [mediaProfiles countByEnumeratingWithState:&v36 objects:v45 count:16];
          if (v15)
          {
            v16 = v15;
            v29 = characteristic;
            v30 = v9;
            v17 = *v37;
            do
            {
              for (i = 0; i != v16; ++i)
              {
                if (*v37 != v17)
                {
                  objc_enumerationMutation(mediaProfiles);
                }

                v19 = *(*(&v36 + 1) + 8 * i);
                v32 = 0u;
                v33 = 0u;
                v34 = 0u;
                v35 = 0u;
                accessories = [v19 accessories];
                v21 = [accessories countByEnumeratingWithState:&v32 objects:v44 count:16];
                if (v21)
                {
                  v22 = v21;
                  v23 = *v33;
                  do
                  {
                    for (j = 0; j != v22; ++j)
                    {
                      if (*v33 != v23)
                      {
                        objc_enumerationMutation(accessories);
                      }

                      room2 = [*(*(&v32 + 1) + 8 * j) room];
                      [v3 na_safeAddObject:room2];
                    }

                    v22 = [accessories countByEnumeratingWithState:&v32 objects:v44 count:16];
                  }

                  while (v22);
                }
              }

              v16 = [mediaProfiles countByEnumeratingWithState:&v36 objects:v45 count:16];
            }

            while (v16);
            v8 = v27;
            v7 = v28;
            characteristic = v29;
            v9 = v30;
          }
        }

LABEL_25:
        ++v9;
      }

      while (v9 != v7);
      v7 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
    }

    while (v7);
  }

  return v3;
}

- (id)executeActionSet
{
  valueSource = [(HFActionSetItem *)self valueSource];
  v4 = objc_opt_respondsToSelector();

  v5 = MEMORY[0x277D2C900];
  if (v4)
  {
    v6 = objc_alloc_init(MEMORY[0x277D2C900]);
    objc_initWeak(&location, self);
    valueSource2 = [(HFActionSetItem *)self valueSource];
    actionSet = [(HFActionSetItem *)self actionSet];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __35__HFActionSetItem_executeActionSet__block_invoke;
    v12[3] = &unk_277DF8400;
    objc_copyWeak(&v14, &location);
    v9 = v6;
    v13 = v9;
    [valueSource2 executeActionSet:actionSet completionHandler:v12];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  else
  {
    v10 = [MEMORY[0x277CCA9B8] hf_errorWithCode:36];
    v9 = [v5 futureWithError:v10];
  }

  return v9;
}

void __35__HFActionSetItem_executeActionSet__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  v5 = *(a1 + 32);
  if (v7)
  {
    v6 = [WeakRetained actionSetOperation:@"HFOperationExecuteActionSet" errorFromError:v7];
    [v5 finishWithError:v6];
  }

  else
  {
    [v5 finishWithNoResult];
  }
}

- (id)turnOffActionSet
{
  v41 = *MEMORY[0x277D85DE8];
  v29 = [MEMORY[0x277CBEB58] set];
  [MEMORY[0x277CBEB58] set];
  v28 = v27 = self;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  actionSet = [(HFActionSetItem *)self actionSet];
  actions = [actionSet actions];

  obj = actions;
  v5 = [actions countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v37;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v37 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v36 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
          characteristic = [v10 characteristic];
          targetValue = [v10 targetValue];
          hf_powerStateCharacteristicTypes = [MEMORY[0x277CD1970] hf_powerStateCharacteristicTypes];
          characteristicType = [characteristic characteristicType];
          if ([hf_powerStateCharacteristicTypes containsObject:characteristicType])
          {
            v15 = [targetValue isEqual:MEMORY[0x277CBEC38]];

            if (v15)
            {
              [v29 addObject:characteristic];
            }
          }

          else
          {
          }

          goto LABEL_18;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          continue;
        }

        objc_opt_class();
        v16 = v9;
        if (objc_opt_isKindOfClass())
        {
          v17 = v16;
        }

        else
        {
          v17 = 0;
        }

        v10 = v17;

        if ([v10 state] == 1)
        {
          characteristic = [v10 mediaProfiles];
          [v28 unionSet:characteristic];
LABEL_18:
        }
      }

      v6 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v6);
  }

  actionSet2 = [(HFActionSetItem *)v27 actionSet];
  v19 = objc_msgSend_home(actionSet2);
  hf_characteristicValueManager = [v19 hf_characteristicValueManager];

  v21 = MEMORY[0x277D2C900];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __35__HFActionSetItem_turnOffActionSet__block_invoke;
  v31[3] = &unk_277DFD1F8;
  v32 = v29;
  v33 = v28;
  v34 = hf_characteristicValueManager;
  v35 = v27;
  v22 = hf_characteristicValueManager;
  v23 = v28;
  v24 = v29;
  v25 = [v21 futureWithBlock:v31];

  return v25;
}

void __35__HFActionSetItem_turnOffActionSet__block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] na_map:&__block_literal_global_128];
  if ([a1[5] count])
  {
    v5 = [objc_alloc(MEMORY[0x277CD1BD0]) initWithMediaProfiles:a1[5] playbackState:2 volume:0 playbackArchive:0];
    v6 = [v4 setByAddingObject:v5];

    v4 = v6;
  }

  if ([v4 count])
  {
    [a1[6] beginTransactionWithReason:@"HFActionSetItemTransactionReasonCounterActionsExecution"];
    objc_initWeak(&location, a1[7]);
    v7 = [a1[6] executeActions:v4];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __35__HFActionSetItem_turnOffActionSet__block_invoke_3;
    v9[3] = &unk_277DF68C0;
    objc_copyWeak(&v11, &location);
    v10 = v3;
    v8 = [v7 addCompletionBlock:v9];

    [a1[6] commitTransactionWithReason:@"HFActionSetItemTransactionReasonCounterActionsExecution"];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  else
  {
    [v3 finishWithNoResult];
  }
}

id __35__HFActionSetItem_turnOffActionSet__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CD19A8];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v4 initWithCharacteristic:v3 targetValue:MEMORY[0x277CBEC28]];

  return v5;
}

void __35__HFActionSetItem_turnOffActionSet__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = *(a1 + 32);
  v8 = [WeakRetained actionSetOperation:@"HFOperationExecuteActionSet" errorFromError:v5];

  [v7 finishWithResult:v6 error:v8];
}

- (id)actionSetOperation:(id)operation errorFromError:(id)error
{
  v17[1] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (errorCopy)
  {
    v7 = errorCopy;
    v8 = MEMORY[0x277CBEB38];
    operationCopy = operation;
    dictionary = [v8 dictionary];
    [dictionary setObject:operationCopy forKeyedSubscript:@"HFErrorUserInfoOperationKey"];

    latestResults = [(HFItem *)self latestResults];
    v12 = [latestResults objectForKeyedSubscript:@"title"];

    if (v12)
    {
      v16 = @"HFErrorHandlerOptionFailedItemName";
      v17[0] = v12;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
      [dictionary setObject:v13 forKeyedSubscript:@"HFErrorUserInfoOptionsKey"];
    }

    v14 = [v7 hf_errorWithAddedUserInfo:dictionary];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end