@interface WFWalletTransactionTrigger(ContentInput)
- (id)contentCollectionWithEventInfo:()ContentInput;
- (id)dictionaryWithTransaction:()ContentInput transactionEvent:;
- (void)eventInfoForEvent:()ContentInput completion:;
@end

@implementation WFWalletTransactionTrigger(ContentInput)

- (id)contentCollectionWithEventInfo:()ContentInput
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = [a3 objectForKeyedSubscript:@"transaction"];
  if (v3)
  {
    v4 = [MEMORY[0x277CFC590] itemWithObject:v3];
    v5 = MEMORY[0x277CFC2E0];
    v9[0] = v4;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    v7 = [v5 collectionWithItems:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)dictionaryWithTransaction:()ContentInput transactionEvent:
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = getWFTriggersLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v37 = "[WFWalletTransactionTrigger(ContentInput) dictionaryWithTransaction:transactionEvent:]";
    v38 = 2112;
    v39 = v5;
    _os_log_impl(&dword_23103C000, v7, OS_LOG_TYPE_DEBUG, "%s Got transaction: %@", buf, 0x16u);
  }

  merchant = [v5 merchant];
  category = [merchant category];

  if ((category - 1) >= 7)
  {
    v10 = 0;
  }

  else
  {
    v10 = category;
  }

  v11 = objc_alloc(MEMORY[0x277CFC580]);
  merchant2 = [v5 merchant];
  displayName = [merchant2 displayName];
  merchant3 = [v5 merchant];
  uniqueIdentifier = [merchant3 uniqueIdentifier];
  merchant4 = [v5 merchant];
  logoImageURL = [merchant4 logoImageURL];
  v18 = [v11 initWithDisplayName:displayName uniqueIdentifier:uniqueIdentifier logoURL:logoImageURL merchantType:v10];

  v19 = objc_alloc(MEMORY[0x277CD3B50]);
  amount = [v5 amount];
  currencyCode = [v5 currencyCode];
  v22 = [v19 initWithAmount:amount currencyCode:currencyCode];

  v23 = objc_alloc(MEMORY[0x277CD3E80]);
  passLocalizedDescription = [v6 passLocalizedDescription];
  v25 = [v23 initWithType:0 name:passLocalizedDescription identificationHint:0 icon:0];

  v26 = objc_alloc(MEMORY[0x277CFC588]);
  transactionID = [v6 transactionID];

  displayName2 = [v18 displayName];
  if (displayName2)
  {
    v29 = [v26 initWithIdentifier:transactionID transactionDescription:displayName2 merchant:v18 currencyAmount:v22 paymentMethod:v25];
  }

  else
  {
    merchantProvidedTitle = [v5 merchantProvidedTitle];
    v29 = [v26 initWithIdentifier:transactionID transactionDescription:merchantProvidedTitle merchant:v18 currencyAmount:v22 paymentMethod:v25];
  }

  v31 = getWFTriggersLogObject();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v37 = "[WFWalletTransactionTrigger(ContentInput) dictionaryWithTransaction:transactionEvent:]";
    v38 = 2112;
    v39 = v29;
    _os_log_impl(&dword_23103C000, v31, OS_LOG_TYPE_DEBUG, "%s Finished with transactionItem: %@", buf, 0x16u);
  }

  v34 = @"transaction";
  v35 = v29;
  v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];

  return v32;
}

- (void)eventInfoForEvent:()ContentInput completion:
{
  v49 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  eventBody = [v6 eventBody];
  if (eventBody)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = 0;
      goto LABEL_10;
    }
  }

  eventBody2 = [v6 eventBody];
  if (eventBody2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    selfCopy = self;
    v11 = getWFTriggersLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v44 = "[WFWalletTransactionTrigger(ContentInput) eventInfoForEvent:completion:]";
      _os_log_impl(&dword_23103C000, v11, OS_LOG_TYPE_DEFAULT, "%s Found remote event converting to BMWalletTransaction", buf, 0xCu);
    }

    v12 = objc_alloc(MEMORY[0x277CF1720]);
    passUniqueID = [eventBody2 passUniqueID];
    passLocalizedDescription = [eventBody2 passLocalizedDescription];
    transactionType = [eventBody2 transactionType];
    transactionID = [eventBody2 transactionID];
    merchantType = [eventBody2 merchantType];
    poiCategory = [eventBody2 poiCategory];
    eventBody = [v12 initWithPassUniqueID:passUniqueID passLocalizedDescription:passLocalizedDescription transactionType:transactionType transactionID:transactionID merchantType:merchantType poiCategory:poiCategory];

    if (eventBody)
    {
      v9 = 1;
      self = selfCopy;
LABEL_10:
      transactionID2 = [eventBody transactionID];

      if (transactionID2)
      {
        if (v9)
        {
          v20 = getWFTriggersLogObject();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            passUniqueID2 = [eventBody passUniqueID];
            transactionID3 = [eventBody transactionID];
            *buf = 136315650;
            v44 = "[WFWalletTransactionTrigger(ContentInput) eventInfoForEvent:completion:]";
            v45 = 2112;
            v46 = passUniqueID2;
            v47 = 2112;
            v48 = transactionID3;
            _os_log_impl(&dword_23103C000, v20, OS_LOG_TYPE_DEFAULT, "%s Attempting to get remote transaction with passID: %@ transactionID: %@", buf, 0x20u);
          }

          passLocalizedDescription3 = +[WFWalletTransactionProvider sharedProvider];
          transactionID4 = [eventBody transactionID];
          passUniqueID3 = [eventBody passUniqueID];
          v38[0] = MEMORY[0x277D85DD0];
          v38[1] = 3221225472;
          v38[2] = __73__WFWalletTransactionTrigger_ContentInput__eventInfoForEvent_completion___block_invoke;
          v38[3] = &unk_2789002C8;
          v38[4] = self;
          v39 = eventBody;
          v40 = v7;
          eventBody = eventBody;
          [passLocalizedDescription3 fetchRemoteTransactionWithIdentifier:transactionID4 passUniqueID:passUniqueID3 completion:v38];

          v26 = v39;
        }

        else
        {
          passLocalizedDescription3 = +[WFWalletTransactionProvider sharedProvider];
          transactionID5 = [eventBody transactionID];
          v35[0] = MEMORY[0x277D85DD0];
          v35[1] = 3221225472;
          v35[2] = __73__WFWalletTransactionTrigger_ContentInput__eventInfoForEvent_completion___block_invoke_2;
          v35[3] = &unk_2789002C8;
          v35[4] = self;
          v36 = eventBody;
          v37 = v7;
          eventBody = eventBody;
          [passLocalizedDescription3 fetchLocalTransactionWithIdentifier:transactionID5 completion:v35];

          v26 = v36;
        }
      }

      else
      {
        passLocalizedDescription2 = [eventBody passLocalizedDescription];

        if (!passLocalizedDescription2)
        {
          v33 = getWFTriggersLogObject();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315138;
            v44 = "[WFWalletTransactionTrigger(ContentInput) eventInfoForEvent:completion:]";
            _os_log_impl(&dword_23103C000, v33, OS_LOG_TYPE_ERROR, "%s No transaction identifier or pass description not creating input to trigger!", buf, 0xCu);
          }

          (*(v7 + 2))(v7, 0);
          goto LABEL_24;
        }

        v41 = @"transaction";
        v29 = objc_alloc(MEMORY[0x277CFC588]);
        passLocalizedDescription3 = [eventBody passLocalizedDescription];
        v30 = [v29 initWithIdentifier:0 transactionDescription:passLocalizedDescription3 merchant:0 currencyAmount:0 paymentMethod:0];
        v42 = v30;
        v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
        (*(v7 + 2))(v7, v31);
      }

LABEL_24:
      goto LABEL_25;
    }
  }

  else
  {

    v27 = getWFTriggersLogObject();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v44 = "[WFWalletTransactionTrigger(ContentInput) eventInfoForEvent:completion:]";
      _os_log_impl(&dword_23103C000, v27, OS_LOG_TYPE_DEFAULT, "%s No wallet transaction event received for trigger; not firing.", buf, 0xCu);
    }
  }

  (*(v7 + 2))(v7, 0);
LABEL_25:
}

@end