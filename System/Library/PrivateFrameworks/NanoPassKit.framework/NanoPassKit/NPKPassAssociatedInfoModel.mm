@interface NPKPassAssociatedInfoModel
+ (id)accountBalanceForAccount:(id)account;
- (BOOL)_shouldAddCommutePlan:(id)plan action:(id)action withBalancesByID:(id)d;
- (BOOL)hasDeviceBoundCommutePlans;
- (BOOL)isEqual:(id)equal;
- (NPKPassAssociatedInfoModel)initWithPass:(id)pass transitProperties:(id)properties balances:(id)balances commutePlanValueRequired:(BOOL)required;
- (id)_actionWithIdentifier:(id)identifier type:(unint64_t)type;
- (id)_actionWithIdentifiers:(id)identifiers type:(unint64_t)type;
- (id)_allPassBalanceFieldsWithBalancesByID:(id)d;
- (id)_balanceByIDWithBalances:(id)balances;
- (id)_balanceFieldBalance:(id)balance fieldIdentifier:(id)identifier;
- (id)_balanceFieldWithPassField:(id)field balance:(id)balance isPrimaryBalance:(BOOL)primaryBalance;
- (id)_balanceFieldsWithBalancesByID:(id)d passFields:(id)fields maximumCount:(unint64_t)count;
- (id)_balancePassFieldsFromPass:(id)pass;
- (id)_commutePlanFieldsWithBalancesByID:(id)d dynamicPlansByID:(id)iD;
- (id)_commutePlanWithFelicaPassProperties:(id)properties;
- (id)_commutePlansByIDWithPlans:(id)plans;
- (id)_fieldForCommutePlan:(id)plan action:(id)action isLegacyPass:(BOOL)pass balancedByID:(id)d;
- (id)_formattedValueWithCommutePlan:(id)plan balancesByID:(id)d;
- (id)_identifierFromAction:(id)action type:(unint64_t)type;
- (id)_primaryDisplayableBalanceFieldWithBalancesByID:(id)d;
- (id)_rawCountValueWithCommutePlan:(id)plan balancesByID:(id)d;
- (id)description;
- (void)setBalances:(id)balances;
- (void)setCommutePlanValueRequired:(BOOL)required;
- (void)setDynamicPlans:(id)plans;
- (void)setTiles:(id)tiles;
- (void)setTransitPassProperties:(id)properties;
- (void)updateItemFields;
@end

@implementation NPKPassAssociatedInfoModel

+ (id)accountBalanceForAccount:(id)account
{
  v19 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  if ([accountCopy feature] == 4)
  {
    appleBalanceDetails = [accountCopy appleBalanceDetails];
    currentBalance = [appleBalanceDetails currentBalance];

    if (currentBalance)
    {
      v7 = [objc_alloc(MEMORY[0x277D38008]) initWithIdentifier:@"account-balance-identifier" forCurrencyAmount:currentBalance];
    }

    else
    {
      v8 = pk_General_log(v6);
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

      if (v9)
      {
        v11 = pk_General_log(v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          accountIdentifier = [accountCopy accountIdentifier];
          appleBalanceDetails2 = [accountCopy appleBalanceDetails];
          v15 = 138412546;
          v16 = accountIdentifier;
          v17 = 2112;
          v18 = appleBalanceDetails2;
          _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: NPKPassAssociatedInfoManager: Account apple balance not available for account with identifier %@, account details: %@", &v15, 0x16u);
        }
      }

      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NPKPassAssociatedInfoModel)initWithPass:(id)pass transitProperties:(id)properties balances:(id)balances commutePlanValueRequired:(BOOL)required
{
  passCopy = pass;
  propertiesCopy = properties;
  balancesCopy = balances;
  v20.receiver = self;
  v20.super_class = NPKPassAssociatedInfoModel;
  v14 = [(NPKPassAssociatedInfoModel *)&v20 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_pass, pass);
    v16 = propertiesCopy;
    if (!propertiesCopy)
    {
      v16 = [MEMORY[0x277D38310] passPropertiesForPass:passCopy];
    }

    v17 = [v16 copy];
    transitPassProperties = v15->_transitPassProperties;
    v15->_transitPassProperties = v17;

    if (!propertiesCopy)
    {
    }

    objc_storeStrong(&v15->_balances, balances);
    v15->_commutePlanValueRequired = required;
    [(NPKPassAssociatedInfoModel *)v15 updateItemFields];
  }

  return v15;
}

- (void)setTransitPassProperties:(id)properties
{
  if (self->_transitPassProperties != properties)
  {
    v5 = [properties copy];
    transitPassProperties = self->_transitPassProperties;
    self->_transitPassProperties = v5;

    [(NPKPassAssociatedInfoModel *)self updateItemFields];
  }
}

- (void)setBalances:(id)balances
{
  if (self->_balances != balances)
  {
    v5 = [balances copy];
    balances = self->_balances;
    self->_balances = v5;

    [(NPKPassAssociatedInfoModel *)self updateItemFields];
  }
}

- (void)setDynamicPlans:(id)plans
{
  if (self->_dynamicPlans != plans)
  {
    v5 = [plans copy];
    dynamicPlans = self->_dynamicPlans;
    self->_dynamicPlans = v5;

    [(NPKPassAssociatedInfoModel *)self updateItemFields];
  }
}

- (void)setCommutePlanValueRequired:(BOOL)required
{
  if (self->_commutePlanValueRequired != required)
  {
    self->_commutePlanValueRequired = required;
    [(NPKPassAssociatedInfoModel *)self updateItemFields];
  }
}

- (void)setTiles:(id)tiles
{
  if (self->_tiles != tiles)
  {
    v5 = [tiles copy];
    tiles = self->_tiles;
    self->_tiles = v5;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      uniqueID = [(PKPaymentPass *)self->_pass uniqueID];
      uniqueID2 = [(PKPaymentPass *)v5->_pass uniqueID];
      if (NPKIsEqual(uniqueID, uniqueID2) && NPKIsEqual(self->_balanceFields, v5->_balanceFields) && NPKIsEqual(self->_balances, v5->_balances) && NPKIsEqual(self->_transitPassProperties, v5->_transitPassProperties) && NPKIsEqual(self->_transitAppletState, v5->_transitAppletState) && NPKIsEqual(self->_tiles, v5->_tiles) && NPKIsEqual(self->_dynamicPlans, v5->_dynamicPlans) && self->_rangingSuspensionReason == v5->_rangingSuspensionReason)
      {
        v8 = NPKIsEqual(self->_precursorPassDescription, v5->_precursorPassDescription);
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (BOOL)hasDeviceBoundCommutePlans
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  commutePlanFields = [(NPKPassAssociatedInfoModel *)self commutePlanFields];
  v3 = [commutePlanFields countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(commutePlanFields);
        }

        if ([*(*(&v7 + 1) + 8 * i) isDeviceBound])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [commutePlanFields countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (void)updateItemFields
{
  v3 = [(NPKPassAssociatedInfoModel *)self _balanceByIDWithBalances:self->_balances];
  v4 = [(NPKPassAssociatedInfoModel *)self _commutePlansByIDWithPlans:self->_dynamicPlans];
  v5 = [(NPKPassAssociatedInfoModel *)self _primaryDisplayableBalanceFieldWithBalancesByID:v3];
  v6 = [(NPKPassAssociatedInfoModel *)self _allPassBalanceFieldsWithBalancesByID:v3];
  v7 = v6;
  if (v5)
  {
    array = [MEMORY[0x277CBEB18] array];
    [array addObject:v5];
    identifier = [v5 identifier];
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __46__NPKPassAssociatedInfoModel_updateItemFields__block_invoke;
    v23 = &unk_279948E70;
    v24 = identifier;
    v25 = array;
    v10 = array;
    v11 = identifier;
    [v7 enumerateObjectsUsingBlock:&v20];
    v12 = [v10 copy];
    balanceFields = self->_balanceFields;
    self->_balanceFields = v12;
  }

  else
  {
    v14 = [v6 copy];
    v15 = self->_balanceFields;
    self->_balanceFields = v14;
  }

  v16 = [(NPKPassAssociatedInfoModel *)self _commutePlanFieldsWithBalancesByID:v3 dynamicPlansByID:v4];
  commutePlanFields = self->_commutePlanFields;
  self->_commutePlanFields = v16;

  v18 = MEMORY[0x277D37F98];
  uniqueID = [(PKPaymentPass *)self->_pass uniqueID];
  [v18 npkClearTransitValuePendingStateIfNecessaryForPassWithID:uniqueID withBalanceFields:self->_balanceFields commutePlanFields:self->_commutePlanFields];
}

void __46__NPKPassAssociatedInfoModel_updateItemFields__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6 = v3;
  v5 = [v3 identifier];
  LOBYTE(v4) = [v4 isEqualToString:v5];

  if ((v4 & 1) == 0)
  {
    [*(a1 + 40) addObject:v6];
  }
}

- (id)_primaryDisplayableBalanceFieldWithBalancesByID:(id)d
{
  dCopy = d;
  if ([(PKPaymentPass *)self->_pass isContentLoaded]&& [(PKPaymentPass *)self->_pass isStoredValuePass])
  {
    v5 = [(NPKPassAssociatedInfoModel *)self _balancePassFieldsFromPass:self->_pass];
    v6 = [(NPKPassAssociatedInfoModel *)self _balanceFieldsWithBalancesByID:dCopy passFields:v5 maximumCount:1];

    if ([v6 count])
    {
      firstObject = [v6 firstObject];
LABEL_7:
      v8 = firstObject;
      goto LABEL_9;
    }
  }

  else
  {
    v6 = [dCopy objectForKey:@"account-balance-identifier"];
    if (v6)
    {
      firstObject = [(NPKPassAssociatedInfoModel *)self _balanceFieldBalance:v6 fieldIdentifier:@"account-balance-item"];
      goto LABEL_7;
    }
  }

  v8 = 0;
LABEL_9:

  return v8;
}

- (id)_allPassBalanceFieldsWithBalancesByID:(id)d
{
  dCopy = d;
  array = [MEMORY[0x277CBEB18] array];
  if ([(PKPaymentPass *)self->_pass isContentLoaded])
  {
    v6 = [(NPKPassAssociatedInfoModel *)self _balancePassFieldsFromPass:self->_pass];
    v7 = [(NPKPassAssociatedInfoModel *)self _balanceFieldsWithBalancesByID:dCopy passFields:v6 maximumCount:0];
    [array addObjectsFromArray:v7];
  }

  return array;
}

- (id)_balanceFieldBalance:(id)balance fieldIdentifier:(id)identifier
{
  identifierCopy = identifier;
  balanceCopy = balance;
  v7 = [NPKBalanceField alloc];
  v8 = PKLocalizedAppleBalanceString(&cfstr_PassBalanceTit.isa);
  formattedValue = [balanceCopy formattedValue];
  v10 = [(NPKBalanceField *)v7 initWithBalance:balanceCopy label:v8 formattedValue:formattedValue identifier:identifierCopy primaryBalance:1 action:0 pendingUpdateExpireDate:0];

  return v10;
}

- (id)_balanceFieldsWithBalancesByID:(id)d passFields:(id)fields maximumCount:(unint64_t)count
{
  v60 = *MEMORY[0x277D85DE8];
  dCopy = d;
  fieldsCopy = fields;
  array = [MEMORY[0x277CBEB18] array];
  v11 = *MEMORY[0x277D38850];
  v12 = [dCopy objectForKey:*MEMORY[0x277D38850]];
  v13 = v12;
  v48 = v12 == 0;
  selfCopy = self;
  countCopy = count;
  v42 = fieldsCopy;
  if (v12)
  {
    pass = self->_pass;
    value = [v12 value];
    v16 = [(PKPaymentPass *)pass npkPendingAddValueStateExpireDateForBalanceFieldWithIdentifier:v11 currentBalance:value];

    v17 = [(NPKPassAssociatedInfoModel *)self _actionWithIdentifier:0 type:1];
    v18 = [NPKBalanceField alloc];
    v19 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.NanoPassKitUI"];
    v20 = [v19 localizedStringForKey:@"PASS_DETAILS_HEADER_TRANSIT_BALANCE" value:&stru_286C934F8 table:@"NanoPassKitUI-Transit"];
    formattedValue = [v13 formattedValue];
    v22 = [(NPKBalanceField *)v18 initWithBalance:v13 label:v20 formattedValue:formattedValue identifier:v11 primaryBalance:1 action:v17 pendingUpdateExpireDate:v16];

    self = selfCopy;
    [array addObject:v22];

    count = countCopy;
    fieldsCopy = v42;
  }

  if ([dCopy count])
  {
    v41 = v13;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v23 = fieldsCopy;
    v24 = [v23 countByEnumeratingWithState:&v54 objects:v59 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v55;
      v43 = v23;
      v44 = array;
      v47 = *v55;
      while (2)
      {
        v27 = 0;
        v49 = v25;
        do
        {
          if (*v55 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v54 + 1) + 8 * v27);
          if ([v28 foreignReferenceType])
          {
            foreignReferenceIdentifiers = [v28 foreignReferenceIdentifiers];
            if (foreignReferenceIdentifiers)
            {
              v30 = foreignReferenceIdentifiers;
              if ([foreignReferenceIdentifiers count] == 1)
              {
                anyObject = [v30 anyObject];
                v32 = [dCopy objectForKeyedSubscript:anyObject];
              }

              else
              {
                anyObject = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v30, "count")}];
                v50 = 0u;
                v51 = 0u;
                v52 = 0u;
                v53 = 0u;
                v33 = v30;
                v34 = [v33 countByEnumeratingWithState:&v50 objects:v58 count:16];
                if (v34)
                {
                  v35 = v34;
                  v36 = *v51;
                  do
                  {
                    for (i = 0; i != v35; ++i)
                    {
                      if (*v51 != v36)
                      {
                        objc_enumerationMutation(v33);
                      }

                      v38 = [dCopy objectForKeyedSubscript:*(*(&v50 + 1) + 8 * i)];
                      [anyObject npkSafelyAddObject:v38];
                    }

                    v35 = [v33 countByEnumeratingWithState:&v50 objects:v58 count:16];
                  }

                  while (v35);
                }

                v32 = [objc_alloc(MEMORY[0x277D38008]) initWithComponentBalances:anyObject identifiers:v33];
                array = v44;
                self = selfCopy;
                count = countCopy;
                v23 = v43;
              }

              if (v32)
              {
                v39 = [(NPKPassAssociatedInfoModel *)self _balanceFieldWithPassField:v28 balance:v32 isPrimaryBalance:v48];
                if (v39)
                {
                  [array addObject:v39];
                  v48 = 0;
                }

                if (count && [array count] >= count)
                {

                  goto LABEL_32;
                }
              }

              v26 = v47;
              v25 = v49;
            }
          }

          ++v27;
        }

        while (v27 != v25);
        v25 = [v23 countByEnumeratingWithState:&v54 objects:v59 count:16];
        if (v25)
        {
          continue;
        }

        break;
      }
    }

LABEL_32:

    v13 = v41;
    fieldsCopy = v42;
  }

  return array;
}

- (id)_balanceByIDWithBalances:(id)balances
{
  v3 = MEMORY[0x277CBEB38];
  balancesCopy = balances;
  v5 = [v3 dictionaryWithCapacity:{objc_msgSend(balancesCopy, "count")}];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__NPKPassAssociatedInfoModel__balanceByIDWithBalances___block_invoke;
  v8[3] = &unk_279948E98;
  v6 = v5;
  v9 = v6;
  [balancesCopy enumerateObjectsUsingBlock:v8];

  return v6;
}

void __55__NPKPassAssociatedInfoModel__balanceByIDWithBalances___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 identifiers];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (([v3 isExpired] & 1) == 0)
        {
          [*(a1 + 32) setObject:v3 forKeyedSubscript:v9];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (id)_commutePlansByIDWithPlans:(id)plans
{
  v18 = *MEMORY[0x277D85DE8];
  plansCopy = plans;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = plansCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        uniqueIdentifier = [v10 uniqueIdentifier];
        [v4 setObject:v10 forKeyedSubscript:uniqueIdentifier];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)_balanceFieldWithPassField:(id)field balance:(id)balance isPrimaryBalance:(BOOL)primaryBalance
{
  primaryBalanceCopy = primaryBalance;
  v38 = *MEMORY[0x277D85DE8];
  fieldCopy = field;
  balanceCopy = balance;
  localizedTitle = [balanceCopy localizedTitle];
  v11 = localizedTitle;
  if (localizedTitle)
  {
    v12 = localizedTitle;
  }

  else
  {
    label = [fieldCopy label];
    v14 = label;
    if (label)
    {
      v12 = label;
    }

    else
    {
      v15 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.NanoPassKitUI"];
      v12 = [v15 localizedStringForKey:@"PASS_DETAILS_HEADER_TRANSIT_BALANCE" value:&stru_286C934F8 table:@"NanoPassKitUI-Transit"];
    }
  }

  formattedValue = [balanceCopy formattedValue];
  v17 = formattedValue;
  if (v12 && formattedValue)
  {
    identifiers = [balanceCopy identifiers];
    pass = self->_pass;
    anyObject = [identifiers anyObject];
    value = [balanceCopy value];
    v22 = [(PKPaymentPass *)pass npkPendingAddValueStateExpireDateForBalanceFieldWithIdentifier:anyObject currentBalance:value];

    v23 = [(NPKPassAssociatedInfoModel *)self _actionWithIdentifiers:identifiers type:1];
    v24 = [NPKBalanceField alloc];
    anyObject2 = [identifiers anyObject];
    v26 = [(NPKBalanceField *)v24 initWithBalance:balanceCopy label:v12 formattedValue:v17 identifier:anyObject2 primaryBalance:primaryBalanceCopy action:v23 pendingUpdateExpireDate:v22];
  }

  else
  {
    v27 = pk_General_log(formattedValue);
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);

    if (v28)
    {
      v30 = pk_General_log(v29);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v33 = balanceCopy;
        v34 = 2112;
        v35 = v12;
        v36 = 2112;
        v37 = v17;
        _os_log_impl(&dword_25B300000, v30, OS_LOG_TYPE_DEFAULT, "Notice: NPKPassAssociatedInfoModel: Missing data from balance:%@ localizedTitle:%@ formattedValue:%@", buf, 0x20u);
      }
    }

    v26 = 0;
  }

  return v26;
}

- (id)_commutePlanFieldsWithBalancesByID:(id)d dynamicPlansByID:(id)iD
{
  v65 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  if (![(PKPaymentPass *)self->_pass isTransitPass])
  {
    array = MEMORY[0x277CBEBF8];
    goto LABEL_28;
  }

  array = [MEMORY[0x277CBEB18] array];
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  pass = [(NPKPassAssociatedInfoModel *)self pass];
  transitCommutePlanType = [pass transitCommutePlanType];

  pass2 = [(NPKPassAssociatedInfoModel *)self pass];
  transitCommutePlans = [pass2 transitCommutePlans];
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __82__NPKPassAssociatedInfoModel__commutePlanFieldsWithBalancesByID_dynamicPlansByID___block_invoke;
  v58[3] = &unk_279948EC0;
  v58[4] = self;
  v13 = dCopy;
  v59 = v13;
  v14 = v9;
  v60 = v14;
  v48 = iDCopy;
  v61 = iDCopy;
  v15 = v8;
  v62 = v15;
  [transitCommutePlans enumerateObjectsUsingBlock:v58];

  v47 = v15;
  if ([v14 count])
  {
    v56 = 0uLL;
    v57 = 0uLL;
    v54 = 0uLL;
    v55 = 0uLL;
    v16 = v14;
    v17 = [v16 countByEnumeratingWithState:&v54 objects:v64 count:16];
    if (!v17)
    {
      goto LABEL_24;
    }

    v18 = v17;
    v44 = v14;
    v45 = dCopy;
    v19 = *v55;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v55 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v54 + 1) + 8 * i);
        identifier = [v21 identifier];
        v23 = [(NPKPassAssociatedInfoModel *)self _actionWithIdentifier:identifier type:2];

        pass3 = [(NPKPassAssociatedInfoModel *)self pass];
        transitCommutePlanType2 = [pass3 transitCommutePlanType];

        if ([(NPKPassAssociatedInfoModel *)self _shouldAddCommutePlan:v21 action:v23 withBalancesByID:v13])
        {
          v26 = [(NPKPassAssociatedInfoModel *)self _fieldForCommutePlan:v21 action:v23 isLegacyPass:transitCommutePlanType2 == 1 balancedByID:v13];
          [array addObject:v26];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v54 objects:v64 count:16];
    }

    while (v18);
  }

  else
  {
    v52 = 0uLL;
    v53 = 0uLL;
    v50 = 0uLL;
    v51 = 0uLL;
    v16 = v15;
    v27 = [v16 countByEnumeratingWithState:&v50 objects:v63 count:16];
    if (!v27)
    {
      goto LABEL_24;
    }

    v28 = v27;
    v44 = v14;
    v45 = dCopy;
    v29 = *v51;
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v51 != v29)
        {
          objc_enumerationMutation(v16);
        }

        v31 = *(*(&v50 + 1) + 8 * j);
        identifier2 = [v31 identifier];
        v33 = [(NPKPassAssociatedInfoModel *)self _actionWithIdentifier:identifier2 type:2];

        pass4 = [(NPKPassAssociatedInfoModel *)self pass];
        transitCommutePlanType3 = [pass4 transitCommutePlanType];

        if ([(NPKPassAssociatedInfoModel *)self _shouldAddCommutePlan:v31 action:v33 withBalancesByID:v13])
        {
          v36 = [(NPKPassAssociatedInfoModel *)self _fieldForCommutePlan:v31 action:v33 isLegacyPass:transitCommutePlanType3 == 1 balancedByID:v13];
          [array addObject:v36];
        }
      }

      v28 = [v16 countByEnumeratingWithState:&v50 objects:v63 count:16];
    }

    while (v28);
  }

  v14 = v44;
  dCopy = v45;
LABEL_24:

  iDCopy = v48;
  if (transitCommutePlanType == 1 || (-[NPKPassAssociatedInfoModel pass](self, "pass"), v37 = objc_claimAutoreleasedReturnValue(), [v37 transitCommutePlans], v38 = objc_claimAutoreleasedReturnValue(), v39 = objc_msgSend(v38, "count"), v38, v37, !v39))
  {
    transitPassProperties = [(NPKPassAssociatedInfoModel *)self transitPassProperties];
    felicaProperties = [transitPassProperties felicaProperties];
    v42 = [(NPKPassAssociatedInfoModel *)self _commutePlanWithFelicaPassProperties:felicaProperties];
    [array addObjectsFromArray:v42];
  }

LABEL_28:

  return array;
}

void __82__NPKPassAssociatedInfoModel__commutePlanFieldsWithBalancesByID_dynamicPlansByID___block_invoke(id *a1, void *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = a1[4];
  v5 = [v3 identifier];
  v6 = [v4 _actionWithIdentifier:v5 type:2];

  if ([v3 requiresAppletSourceOfTruth])
  {
    v30 = v6;
    v29 = [v3 passFieldForKey:*MEMORY[0x277D38A00]];
    [v29 foreignReferenceIdentifiers];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v28 = v38 = 0u;
    v7 = [v28 allObjects];
    v8 = [v7 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (!v8)
    {
      goto LABEL_14;
    }

    v9 = v8;
    v10 = *v36;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v36 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [a1[5] objectForKeyedSubscript:*(*(&v35 + 1) + 8 * i)];

        if (v12)
        {
          [a1[6] addObject:v3];
          goto LABEL_14;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v9);
LABEL_14:

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v13 = a1;
    v14 = [a1[7] allValues];
    v15 = [v14 countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (!v15)
    {
      goto LABEL_32;
    }

    v16 = v15;
    v17 = *v32;
LABEL_16:
    v18 = 0;
    while (1)
    {
      if (*v32 != v17)
      {
        objc_enumerationMutation(v14);
      }

      v19 = *(*(&v31 + 1) + 8 * v18);
      v20 = [v3 identifier];
      v21 = [v19 identifier];
      v22 = v20;
      v23 = v21;
      v24 = v23;
      if (v22 == v23)
      {
        break;
      }

      if (v22 && v23)
      {
        v25 = [v22 isEqualToString:v23];

        if ((v25 & 1) == 0)
        {
          goto LABEL_30;
        }

        goto LABEL_25;
      }

LABEL_29:
LABEL_30:
      if (v16 == ++v18)
      {
        v16 = [v14 countByEnumeratingWithState:&v31 objects:v39 count:16];
        if (!v16)
        {
LABEL_32:

          v6 = v30;
          goto LABEL_33;
        }

        goto LABEL_16;
      }
    }

LABEL_25:
    v22 = [v3 updateWithCommutePlanDetail:v19];
    [v30 setAssociatedPlan:v22];
    v26 = [v22 hasExpiredPlanDate];
    v27 = 6;
    if (v26)
    {
      v27 = 8;
    }

    [v13[v27] addObject:v22];
    goto LABEL_29;
  }

  if ([a1[4] _shouldAddCommutePlan:v3 action:v6 withBalancesByID:a1[5]])
  {
    [a1[6] addObject:v3];
  }

LABEL_33:
}

- (id)_fieldForCommutePlan:(id)plan action:(id)action isLegacyPass:(BOOL)pass balancedByID:(id)d
{
  v45 = *MEMORY[0x277D85DE8];
  planCopy = plan;
  actionCopy = action;
  dCopy = d;
  title = [planCopy title];
  v13 = title;
  if (pass)
  {
    value = [title value];

    title2 = [planCopy title];
    [title2 label];
  }

  else
  {
    value = [title label];

    title2 = [planCopy title];
    [title2 value];
  }
  v37 = ;

  v16 = [NPKDateRange alloc];
  startDate = [planCopy startDate];
  expiryDate = [planCopy expiryDate];
  v36 = [(NPKDateRange *)v16 initWithStartDate:startDate expirationDate:expiryDate formatterStyle:3];

  v19 = [(NPKPassAssociatedInfoModel *)self _rawCountValueWithCommutePlan:planCopy balancesByID:dCopy];
  pass = self->_pass;
  uniqueIdentifier = [planCopy uniqueIdentifier];
  expiryDate2 = [planCopy expiryDate];
  v23 = [(PKPaymentPass *)pass npkPendingAddValueStateExpireDateForCommutePlanFieldWithIdentifier:uniqueIdentifier expiryDate:expiryDate2 rawCountValue:v19];

  v25 = pk_General_log(v24);
  LODWORD(uniqueIdentifier) = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);

  if (uniqueIdentifier)
  {
    v27 = pk_General_log(v26);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v40 = value;
      v41 = 2112;
      v42 = v19;
      v43 = 2112;
      v44 = v23;
      _os_log_impl(&dword_25B300000, v27, OS_LOG_TYPE_DEFAULT, "Notice: Creating commute plan field with label: %@, tripCount: %@, pendingUpdateExpireDate: %@", buf, 0x20u);
    }
  }

  v28 = [NPKCommutePlanField alloc];
  v29 = [(NPKPassAssociatedInfoModel *)self _formattedValueWithCommutePlan:planCopy balancesByID:dCopy];
  [planCopy uniqueIdentifier];
  v31 = v30 = value;
  details = [planCopy details];
  LOBYTE(v34) = [planCopy isDeviceBound];
  v35 = [(NPKCommutePlanField *)v28 initWithLabel:v30 detailLabel:v37 formattedValue:v29 rawCountValue:v19 usageDateRange:v36 identifier:v31 details:details action:actionCopy isDeviceBound:v34 pendingUpdateExpireDate:v23];

  return v35;
}

- (BOOL)_shouldAddCommutePlan:(id)plan action:(id)action withBalancesByID:(id)d
{
  v54 = *MEMORY[0x277D85DE8];
  planCopy = plan;
  actionCopy = action;
  dCopy = d;
  properties = [planCopy properties];
  expiryDate = [planCopy expiryDate];
  if (!expiryDate || ((v13 = (properties & 1) == 0, [planCopy expiryDate], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x277CBEAA8], "now"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v14, "compare:", v15), v15, v14, expiryDate, v16 == 1) ? (v17 = 1) : (v17 = v13), (v17 & 1) != 0 || (objc_msgSend(actionCopy, "isActionAvailable") & 1) != 0 || (objc_msgSend(planCopy, "isPlanDisplayable") & 1) != 0))
  {
    if (-[NPKPassAssociatedInfoModel isCommutePlanValueRequired](self, "isCommutePlanValueRequired") && ([planCopy properties] & 4) != 0)
    {
      v42 = 0;
      v43 = &v42;
      v44 = 0x2020000000;
      v45 = 0;
      *v50 = 0;
      *&v50[8] = v50;
      *&v50[16] = 0x3032000000;
      v51 = __Block_byref_object_copy__17;
      v52 = __Block_byref_object_dispose__17;
      v53 = objc_alloc_init(MEMORY[0x277CCAB68]);
      details = [planCopy details];
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __76__NPKPassAssociatedInfoModel__shouldAddCommutePlan_action_withBalancesByID___block_invoke;
      v37[3] = &unk_279948EE8;
      v40 = v50;
      v41 = &v42;
      v38 = dCopy;
      v39 = actionCopy;
      [details enumerateObjectsUsingBlock:v37];

      if ((v43[3] & 1) == 0)
      {
        v21 = pk_General_log(v20);
        v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);

        if (v22)
        {
          v24 = pk_General_log(v23);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            identifier = [planCopy identifier];
            v26 = *(*&v50[8] + 40);
            *buf = 138412546;
            v47 = identifier;
            v48 = 2112;
            v49 = v26;
            _os_log_impl(&dword_25B300000, v24, OS_LOG_TYPE_DEFAULT, "Notice: NPKPassAssociatedInfoModel: should not add commute plan with identifier:%@. decision detail: %@", buf, 0x16u);
          }
        }
      }

      v18 = *(v43 + 24);

      _Block_object_dispose(v50, 8);
      _Block_object_dispose(&v42, 8);
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    v27 = MEMORY[0x277CCACA8];
    expiryDate2 = [planCopy expiryDate];
    v29 = [v27 stringWithFormat:@" is timed commute plan:%d, is expired:%d, expiry date:%@, is action available:%d", 1, 1, expiryDate2, objc_msgSend(actionCopy, "isActionAvailable")];

    v31 = pk_General_log(v30);
    v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);

    if (v32)
    {
      v34 = pk_General_log(v33);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        identifier2 = [planCopy identifier];
        *v50 = 138412546;
        *&v50[4] = identifier2;
        *&v50[12] = 2112;
        *&v50[14] = v29;
        _os_log_impl(&dword_25B300000, v34, OS_LOG_TYPE_DEFAULT, "Notice: NPKPassAssociatedInfoModel: should not add commute plan with identifier:%@. decision detail:%@", v50, 0x16u);
      }
    }

    v18 = 0;
  }

  return v18 & 1;
}

void __76__NPKPassAssociatedInfoModel__shouldAddCommutePlan_action_withBalancesByID___block_invoke(uint64_t a1, void *a2, uint64_t a3, char *a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = *(*(*(a1 + 48) + 8) + 40);
  v8 = MEMORY[0x277CCACA8];
  v9 = [v6 key];
  v10 = [v6 label];
  v11 = [v6 value];
  v12 = [v6 foreignReferenceIdentifiers];
  v13 = [v8 stringWithFormat:@"\nverifying pass field with key - label - value - fRefID:%@ - %@ - %@ - %@.", v9, v10, v11, v12];
  [v7 appendString:v13];

  [v6 foreignReferenceIdentifiers];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = v26 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v23 + 1) + 8 * i);
        if (([v6 foreignReferenceType] - 1) <= 1)
        {
          v20 = [*(a1 + 32) objectForKeyedSubscript:v19];
          v21 = [v20 value];
          *(*(*(a1 + 56) + 8) + 24) = v21 != 0;

          if (*(*(*(a1 + 56) + 8) + 24) & 1) != 0 || ([*(*(*(a1 + 48) + 8) + 40) appendString:@" balance by ID no value."], *(*(*(a1 + 56) + 8) + 24) = objc_msgSend(*(a1 + 40), "isActionAvailable"), (*(*(*(a1 + 56) + 8) + 24)))
          {
            v22 = 1;
          }

          else
          {
            [*(*(*(a1 + 48) + 8) + 40) appendString:@" action is not available."];
            v22 = *(*(*(a1 + 56) + 8) + 24);
          }

          *a4 = v22;
          goto LABEL_15;
        }

        if (a4)
        {
          goto LABEL_15;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:
}

- (id)_formattedValueWithCommutePlan:(id)plan balancesByID:(id)d
{
  planCopy = plan;
  dCopy = d;
  if (([planCopy properties] & 4) != 0)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__17;
    v17 = __Block_byref_object_dispose__17;
    v18 = 0;
    details = [planCopy details];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __74__NPKPassAssociatedInfoModel__formattedValueWithCommutePlan_balancesByID___block_invoke;
    v10[3] = &unk_279948F10;
    v11 = dCopy;
    v12 = &v13;
    [details enumerateObjectsUsingBlock:v10];

    v7 = v14[5];
    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __74__NPKPassAssociatedInfoModel__formattedValueWithCommutePlan_balancesByID___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 foreignReferenceIdentifiers];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        if (([v5 foreignReferenceType] - 1) <= 1)
        {
          v12 = [*(a1 + 32) objectForKeyedSubscript:v11];
          v13 = [v12 value];

          if (!v13)
          {
            v15 = pk_General_log(v14);
            v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

            v13 = &unk_286CE7750;
            if (v16)
            {
              v18 = pk_General_log(v17);
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                v19 = [*(a1 + 32) objectForKeyedSubscript:v11];
                *buf = 138412546;
                v30 = v5;
                v31 = 2112;
                v32 = v19;
                _os_log_impl(&dword_25B300000, v18, OS_LOG_TYPE_DEFAULT, "Notice: NPKPassAssociatedInfoModel: Using default balance value 0 for field:%@ balance:%@", buf, 0x16u);
              }

              v13 = &unk_286CE7750;
            }
          }

          [v5 unitType];
          v20 = PKLocalizedPaymentUnitKeyForType();
          if (v20)
          {
            PKLocalizedPaymentString(v20, &cfstr_Lu_0.isa, [v13 unsignedLongValue]);
          }

          else
          {
            [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", objc_msgSend(v13, "integerValue")];
          }
          v21 = ;
          v22 = *(*(a1 + 40) + 8);
          v23 = *(v22 + 40);
          *(v22 + 40) = v21;

          *a4 = 1;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v8);
  }
}

- (id)_rawCountValueWithCommutePlan:(id)plan balancesByID:(id)d
{
  planCopy = plan;
  dCopy = d;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__17;
  v17 = __Block_byref_object_dispose__17;
  v18 = 0;
  if (([planCopy properties] & 4) != 0)
  {
    details = [planCopy details];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __73__NPKPassAssociatedInfoModel__rawCountValueWithCommutePlan_balancesByID___block_invoke;
    v10[3] = &unk_279948F38;
    v12 = &v13;
    v11 = dCopy;
    [details enumerateObjectsUsingBlock:v10];

    v7 = v14[5];
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v13, 8);

  return v7;
}

void __73__NPKPassAssociatedInfoModel__rawCountValueWithCommutePlan_balancesByID___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a2;
  [v6 foreignReferenceIdentifiers];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v20 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v18 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v17 + 1) + 8 * v11);
      if (([v6 foreignReferenceType] - 1) <= 1)
      {
        v13 = [*(a1 + 32) objectForKeyedSubscript:v12];
        v14 = [v13 value];
        v15 = *(*(a1 + 40) + 8);
        v16 = *(v15 + 40);
        *(v15 + 40) = v14;

        *a4 = 1;
      }

      if (*(*(*(a1 + 40) + 8) + 40))
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (id)_commutePlanWithFelicaPassProperties:(id)properties
{
  v77 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  array = [MEMORY[0x277CBEB18] array];
  v5 = array;
  if (!propertiesCopy)
  {
    goto LABEL_21;
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__NPKPassAssociatedInfoModel__commutePlanWithFelicaPassProperties___block_invoke;
  aBlock[3] = &unk_279948F60;
  v69 = array;
  v74 = v69;
  v6 = _Block_copy(aBlock);
  v7 = pk_General_log(v6);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v10 = pk_General_log(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      hasShinkansenTicket = [propertiesCopy hasShinkansenTicket];
      *buf = 67109120;
      v76 = hasShinkansenTicket;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: NPKTransitBalanceModel: has Shinkansen ticket:%d", buf, 8u);
    }
  }

  v70 = v5;
  hasShinkansenTicket2 = [propertiesCopy hasShinkansenTicket];
  v68 = v6;
  if (hasShinkansenTicket2)
  {
    v71[0] = MEMORY[0x277D85DD0];
    v71[1] = 3221225472;
    v71[2] = __67__NPKPassAssociatedInfoModel__commutePlanWithFelicaPassProperties___block_invoke_112;
    v71[3] = &unk_279948F88;
    v72 = v6;
    v65 = _Block_copy(v71);
    shinkansenValidityTerm = [propertiesCopy shinkansenValidityTerm];
    shinkansenValidityStartDate = [propertiesCopy shinkansenValidityStartDate];
    calendar = [shinkansenValidityStartDate calendar];
    v61 = shinkansenValidityTerm;
    integerValue = [shinkansenValidityTerm integerValue];
    v60 = shinkansenValidityStartDate;
    date = [shinkansenValidityStartDate date];
    v59 = calendar;
    v18 = [calendar dateByAddingUnit:16 value:integerValue toDate:date options:0];

    shinkansenValidityStartDate2 = [propertiesCopy shinkansenValidityStartDate];
    date2 = [shinkansenValidityStartDate2 date];
    shinkansenOriginStation = [propertiesCopy shinkansenOriginStation];
    shinkansenDestinationStation = [propertiesCopy shinkansenDestinationStation];
    shinkansenDepartureTime = [propertiesCopy shinkansenDepartureTime];
    shinkansenArrivalTime = [propertiesCopy shinkansenArrivalTime];
    shinkansenTrainName = [propertiesCopy shinkansenTrainName];
    shinkansenCarNumber = [propertiesCopy shinkansenCarNumber];
    displayableShinkansenSeat = [propertiesCopy displayableShinkansenSeat];
    v63 = v18;
    v65[2](v65, date2, shinkansenOriginStation, shinkansenDestinationStation, shinkansenDepartureTime, shinkansenArrivalTime, shinkansenTrainName, shinkansenCarNumber, displayableShinkansenSeat, v18, [propertiesCopy isShinkansenTicketActive]);

    shinkansenSecondaryOriginStation = [propertiesCopy shinkansenSecondaryOriginStation];
    if (shinkansenSecondaryOriginStation || ([propertiesCopy shinkansenSecondaryDestinationStation], (shinkansenSecondaryOriginStation = objc_claimAutoreleasedReturnValue()) != 0))
    {

      v28 = v65;
    }

    else
    {
      shinkansenSecondaryTrainName = [propertiesCopy shinkansenSecondaryTrainName];

      v28 = v65;
      if (!shinkansenSecondaryTrainName)
      {
        goto LABEL_11;
      }
    }

    shinkansenValidityStartDate3 = [propertiesCopy shinkansenValidityStartDate];
    date3 = [shinkansenValidityStartDate3 date];
    shinkansenSecondaryOriginStation2 = [propertiesCopy shinkansenSecondaryOriginStation];
    shinkansenSecondaryDestinationStation = [propertiesCopy shinkansenSecondaryDestinationStation];
    shinkansenSecondaryDepartureTime = [propertiesCopy shinkansenSecondaryDepartureTime];
    shinkansenSecondaryArrivalTime = [propertiesCopy shinkansenSecondaryArrivalTime];
    shinkansenSecondaryTrainName2 = [propertiesCopy shinkansenSecondaryTrainName];
    shinkansenSecondaryCarNumber = [propertiesCopy shinkansenSecondaryCarNumber];
    displayableShinkansenSecondarySeat = [propertiesCopy displayableShinkansenSecondarySeat];
    LOBYTE(v57) = [propertiesCopy isShinkansenTicketActive];
    (v28)[2](v28, date3, shinkansenSecondaryOriginStation2, shinkansenSecondaryDestinationStation, shinkansenSecondaryDepartureTime, shinkansenSecondaryArrivalTime, shinkansenSecondaryTrainName2, shinkansenSecondaryCarNumber, displayableShinkansenSecondarySeat, v63, v57);

LABEL_11:
    v6 = v68;
  }

  v37 = pk_General_log(hasShinkansenTicket2);
  v38 = os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT);

  if (v38)
  {
    v40 = pk_General_log(v39);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      hasGreenCarTicket = [propertiesCopy hasGreenCarTicket];
      *buf = 67109120;
      v76 = hasGreenCarTicket;
      _os_log_impl(&dword_25B300000, v40, OS_LOG_TYPE_DEFAULT, "Notice: NPKTransitBalanceModel: has Green Car ticket ticket:%d", buf, 8u);
    }
  }

  if ([propertiesCopy hasGreenCarTicket])
  {
    array2 = [MEMORY[0x277CBEB18] array];
    greenCarValidityStartDate = [propertiesCopy greenCarValidityStartDate];
    calendar2 = [greenCarValidityStartDate calendar];
    v62 = greenCarValidityStartDate;
    date4 = [greenCarValidityStartDate date];
    v67 = calendar2;
    v64 = [calendar2 dateByAddingUnit:16 value:1 toDate:date4 options:0];

    greenCarOriginStation = [propertiesCopy greenCarOriginStation];
    greenCarDestinationStation = [propertiesCopy greenCarDestinationStation];
    v48 = __NPKRouteDescriptionForStations(greenCarOriginStation, greenCarDestinationStation);
    if (v48)
    {
      [array2 addObject:v48];
    }

    v49 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.NanoPassKitUI"];
    v50 = [v49 localizedStringForKey:@"PASS_DETAILS_HEADER_GREEN_CAR_UPGRADE" value:&stru_286C934F8 table:@"NanoPassKitUI-Transit"];

    v51 = [array2 componentsJoinedByString:@"\n"];
    greenCarValidityStartDate2 = [propertiesCopy greenCarValidityStartDate];
    date5 = [greenCarValidityStartDate2 date];

    v6 = v68;
    v68[2](v68, v50, v51, date5, v64);
  }

  v54 = v69;

  v5 = v70;
LABEL_21:

  return v5;
}

void __67__NPKPassAssociatedInfoModel__commutePlanWithFelicaPassProperties___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v20 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v11 || ([MEMORY[0x277CBEAA8] now], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "compare:", v11), v12, v13 != 1))
  {
    v14 = [[NPKDateRange alloc] initWithStartDate:v10 expirationDate:v11 formatterStyle:3];
    v15 = [NPKCommutePlanField alloc];
    v16 = [MEMORY[0x277CCAD78] UUID];
    v17 = [v16 UUIDString];
    LOBYTE(v19) = 0;
    v18 = [(NPKCommutePlanField *)v15 initWithLabel:v20 detailLabel:v9 formattedValue:0 rawCountValue:0 usageDateRange:v14 identifier:v17 details:0 action:0 isDeviceBound:v19 pendingUpdateExpireDate:0];

    [*(a1 + 32) addObject:v18];
  }
}

void __67__NPKPassAssociatedInfoModel__commutePlanWithFelicaPassProperties___block_invoke_112(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10, char a11)
{
  v65 = a3;
  v17 = a4;
  v64 = a5;
  v63 = a6;
  v62 = a7;
  v66 = a8;
  v18 = a9;
  v19 = a10;
  v20 = MEMORY[0x277CBEAA8];
  v58 = a2;
  v21 = [v20 date];
  v59 = v19;
  v22 = [v21 compare:v19];

  v23 = [MEMORY[0x277CBEB18] array];
  if (v22 == -1 && (a11 & 1) == 0)
  {
    v24 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.NanoPassKitUI"];
    v25 = [v24 localizedStringForKey:@"PASS_DETAILS_STATUS_VALUE_INACTIVE" value:&stru_286C934F8 table:@"NanoPassKitUI-Transit"];
    [v23 addObject:v25];
  }

  v26 = v18;
  v27 = __NPKRouteDescriptionForStations(v65, v17);
  if (v27)
  {
    [v23 addObject:v27];
  }

  [v64 date];
  v61 = v28 = v66;
  if (v61)
  {
    v29 = v17;
    v30 = [MEMORY[0x277CCA968] localizedStringFromDate:v61 dateStyle:0 timeStyle:1];
    v31 = MEMORY[0x277CCACA8];
    v32 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.NanoPassKitUI"];
    v33 = [v32 localizedStringForKey:@"PASS_DETAILS_VALUE_DEPARTURE_TIME" value:&stru_286C934F8 table:@"NanoPassKitUI-Transit"];
    v34 = [v31 stringWithFormat:v33, v30];

    if (v34)
    {
      [v23 addObject:v34];
    }

    v17 = v29;
  }

  v35 = [v63 date];
  if (v35)
  {
    v36 = v17;
    v37 = [MEMORY[0x277CCA968] localizedStringFromDate:v35 dateStyle:0 timeStyle:1];
    v38 = MEMORY[0x277CCACA8];
    v39 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.NanoPassKitUI"];
    v40 = [v39 localizedStringForKey:@"PASS_DETAILS_VALUE_ARRIVAL_TIME" value:&stru_286C934F8 table:@"NanoPassKitUI-Transit"];
    v41 = [v38 stringWithFormat:v40, v37];

    if (v41)
    {
      [v23 addObject:v41];
    }

    v17 = v36;
    v28 = v66;
  }

  v42 = v62;
  if (v62)
  {
    [v23 addObject:v62];
  }

  v43 = v26;
  if (v28)
  {
    v44 = MEMORY[0x277CCACA8];
    v45 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.NanoPassKitUI"];
    v46 = [v45 localizedStringForKey:@"PASS_DETAILS_VALUE_CAR_ASSIGNMENT" value:&stru_286C934F8 table:@"NanoPassKitUI-Transit"];
    v47 = [v28 stringValue];
    v48 = [v44 stringWithFormat:v46, v47];

    if (v48)
    {
      [v23 addObject:v48];
    }

    v42 = v62;
    v43 = v26;
  }

  if (v43)
  {
    v49 = MEMORY[0x277CCACA8];
    v50 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.NanoPassKitUI"];
    v51 = [v50 localizedStringForKey:@"PASS_DETAILS_VALUE_SEAT_ASSIGNMENT" value:&stru_286C934F8 table:@"NanoPassKitUI-Transit"];
    v52 = v43;
    v53 = v51;
    v54 = [v49 stringWithFormat:v51, v52];

    if (v54)
    {
      [v23 addObject:v54];
    }

    v43 = v26;
  }

  v55 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.NanoPassKitUI"];
  v56 = [v55 localizedStringForKey:@"PASS_DETAILS_HEADER_SHINKANSEN" value:&stru_286C934F8 table:@"NanoPassKitUI-Transit"];

  v57 = [v23 componentsJoinedByString:@"\n"];
  (*(*(a1 + 32) + 16))();
}

- (id)_actionWithIdentifier:(id)identifier type:(unint64_t)type
{
  if (identifier)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObject:?];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(NPKPassAssociatedInfoModel *)self _actionWithIdentifiers:v6 type:type];

  return v7;
}

- (id)_actionWithIdentifiers:(id)identifiers type:(unint64_t)type
{
  v21 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  availableActions = [(PKPaymentPass *)self->_pass availableActions];
  v8 = [availableActions countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(availableActions);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [(NPKPassAssociatedInfoModel *)self _identifierFromAction:v12 type:type];
        if ([v12 type] == type && (!identifiersCopy || (objc_msgSend(identifiersCopy, "containsObject:", v13) & 1) != 0))
        {
          v14 = v12;

          goto LABEL_13;
        }
      }

      v9 = [availableActions countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_13:

  return v14;
}

- (id)_identifierFromAction:(id)action type:(unint64_t)type
{
  actionCopy = action;
  v6 = actionCopy;
  if (type == 2)
  {
    associatedPlanIdentifier = [actionCopy associatedPlanIdentifier];
    goto LABEL_5;
  }

  if (type == 1)
  {
    associatedPlanIdentifier = [actionCopy associatedEnteredValueIdentifier];
LABEL_5:
    v8 = associatedPlanIdentifier;
    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (id)_balancePassFieldsFromPass:(id)pass
{
  v49 = *MEMORY[0x277D85DE8];
  passCopy = pass;
  if ([passCopy isStoredValuePass])
  {
    balanceFields = [passCopy balanceFields];
  }

  else
  {
    balanceFields = objc_alloc_init(MEMORY[0x277CBEB18]);
    if ([passCopy isAccessPass])
    {
      balanceFields2 = [passCopy balanceFields];
      v5 = [balanceFields2 count];

      if (v5)
      {
        balanceFields3 = [passCopy balanceFields];
        [balanceFields addObjectsFromArray:balanceFields3];
      }
    }

    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    frontFieldBuckets = [passCopy frontFieldBuckets];
    [v7 addObjectsFromArray:frontFieldBuckets];

    v26 = passCopy;
    backFieldBuckets = [passCopy backFieldBuckets];
    [v7 addObjectsFromArray:backFieldBuckets];

    v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    obj = v7;
    v29 = [obj countByEnumeratingWithState:&v42 objects:v48 count:16];
    if (v29)
    {
      v28 = *v43;
      do
      {
        v11 = 0;
        do
        {
          if (*v43 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v30 = v11;
          v12 = *(*(&v42 + 1) + 8 * v11);
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v33 = v12;
          v13 = [v33 countByEnumeratingWithState:&v38 objects:v47 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v39;
            do
            {
              v16 = 0;
              v32 = v14;
              do
              {
                if (*v39 != v15)
                {
                  objc_enumerationMutation(v33);
                }

                v17 = *(*(&v38 + 1) + 8 * v16);
                if ([v17 foreignReferenceType] == 1)
                {
                  foreignReferenceIdentifiers = [v17 foreignReferenceIdentifiers];
                  v34 = 0u;
                  v35 = 0u;
                  v36 = 0u;
                  v37 = 0u;
                  v19 = [foreignReferenceIdentifiers countByEnumeratingWithState:&v34 objects:v46 count:16];
                  if (v19)
                  {
                    v20 = v19;
                    v21 = 0;
                    v22 = *v35;
                    do
                    {
                      for (i = 0; i != v20; ++i)
                      {
                        if (*v35 != v22)
                        {
                          objc_enumerationMutation(foreignReferenceIdentifiers);
                        }

                        v24 = *(*(&v34 + 1) + 8 * i);
                        if (([v10 containsObject:v24] & 1) == 0)
                        {
                          [v10 addObject:v24];
                          v21 = 1;
                        }
                      }

                      v20 = [foreignReferenceIdentifiers countByEnumeratingWithState:&v34 objects:v46 count:16];
                    }

                    while (v20);
                    v14 = v32;
                    if (v21)
                    {
                      [balanceFields addObject:v17];
                    }
                  }
                }

                ++v16;
              }

              while (v16 != v14);
              v14 = [v33 countByEnumeratingWithState:&v38 objects:v47 count:16];
            }

            while (v14);
          }

          v11 = v30 + 1;
        }

        while (v30 + 1 != v29);
        v29 = [obj countByEnumeratingWithState:&v42 objects:v48 count:16];
      }

      while (v29);
    }

    passCopy = v26;
  }

  return balanceFields;
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  pass = [(NPKPassAssociatedInfoModel *)self pass];
  uniqueID = [pass uniqueID];
  balanceFields = [(NPKPassAssociatedInfoModel *)self balanceFields];
  v8 = [v3 stringWithFormat:@"<%@:%p> {passUniqueID:%@, balanceFields:%@", v4, self, uniqueID, balanceFields];

  transitPassProperties = [(NPKPassAssociatedInfoModel *)self transitPassProperties];

  if (transitPassProperties)
  {
    transitPassProperties2 = [(NPKPassAssociatedInfoModel *)self transitPassProperties];
    [v8 appendFormat:@" transitPassProperties:%@", transitPassProperties2];
  }

  balances = [(NPKPassAssociatedInfoModel *)self balances];
  v12 = [balances count];

  if (v12)
  {
    balances2 = [(NPKPassAssociatedInfoModel *)self balances];
    [v8 appendFormat:@" balances:%@", balances2];
  }

  [v8 appendString:@"}"];

  return v8;
}

@end