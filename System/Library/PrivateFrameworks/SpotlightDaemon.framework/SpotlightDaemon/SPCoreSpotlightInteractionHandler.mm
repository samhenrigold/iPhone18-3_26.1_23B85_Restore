@interface SPCoreSpotlightInteractionHandler
- (id)attributeForIntent:(id)intent direction:(int64_t)direction;
- (id)interestingContactIdentifiersFromIntent:(id)intent;
- (void)handleInteraction:(id)interaction bundleID:(id)d protectionClass:(id)class;
@end

@implementation SPCoreSpotlightInteractionHandler

- (id)interestingContactIdentifiersFromIntent:(id)intent
{
  v20 = *MEMORY[0x277D85DE8];
  intentCopy = intent;
  v4 = objc_opt_new();
  [v4 setNumberStyle:1];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    contacts = [intentCopy contacts];
LABEL_4:
    v6 = contacts;
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    contacts = [intentCopy recipients];
    goto LABEL_4;
  }

  v6 = 0;
LABEL_5:
  v7 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        contactIdentifier = [*(*(&v15 + 1) + 8 * i) contactIdentifier];
        if (contactIdentifier)
        {
          [v7 addObject:contactIdentifier];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v7;
}

- (id)attributeForIntent:(id)intent direction:(int64_t)direction
{
  intentCopy = intent;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (direction == 2)
      {
        v6 = MEMORY[0x277CC2C38];
        goto LABEL_14;
      }

      if (direction == 1)
      {
        v6 = MEMORY[0x277CC2E40];
        goto LABEL_14;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = MEMORY[0x277CC2E20];
        goto LABEL_14;
      }
    }

LABEL_11:
    v7 = 0;
    goto LABEL_15;
  }

  if (direction == 2)
  {
    v6 = MEMORY[0x277CC2C08];
    goto LABEL_14;
  }

  if (direction != 1)
  {
    goto LABEL_11;
  }

  v6 = MEMORY[0x277CC2E10];
LABEL_14:
  v7 = *v6;
LABEL_15:

  return v7;
}

- (void)handleInteraction:(id)interaction bundleID:(id)d protectionClass:(id)class
{
  interactionCopy = interaction;
  intent = [interactionCopy intent];
  v8 = [(SPCoreSpotlightInteractionHandler *)self interestingContactIdentifiersFromIntent:intent];
  if (v8)
  {
    v9 = -[SPCoreSpotlightInteractionHandler attributeForIntent:direction:](self, "attributeForIntent:direction:", intent, [interactionCopy direction]);
    if (v9)
    {
      if (handleInteraction_bundleID_protectionClass__onceToken != -1)
      {
        [SPCoreSpotlightInteractionHandler handleInteraction:bundleID:protectionClass:];
      }

      v10 = handleInteraction_bundleID_protectionClass__helperQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __80__SPCoreSpotlightInteractionHandler_handleInteraction_bundleID_protectionClass___block_invoke_2;
      block[3] = &unk_278934130;
      v12 = interactionCopy;
      v13 = v9;
      v14 = v8;
      dispatch_async(v10, block);
    }
  }
}

void __80__SPCoreSpotlightInteractionHandler_handleInteraction_bundleID_protectionClass___block_invoke()
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_BACKGROUND, 0);
  v1 = dispatch_queue_create("com.apple.corespotlight.interactionhelper", v0);
  v2 = handleInteraction_bundleID_protectionClass__helperQueue;
  handleInteraction_bundleID_protectionClass__helperQueue = v1;
}

void __80__SPCoreSpotlightInteractionHandler_handleInteraction_bundleID_protectionClass___block_invoke_2(uint64_t a1)
{
  v26[2] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) dateInterval];
  v3 = [v2 startDate];

  v4 = SICopyRoundedDate();
  v5 = *MEMORY[0x277CC2E20];
  v6 = [*(a1 + 40) isEqualToString:*MEMORY[0x277CC2E20]];
  if (v6)
  {
    v7 = *MEMORY[0x277CC2E38];
    v26[0] = v5;
    v26[1] = v7;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
    v8 = v6;
  }

  else
  {
    v8 = MEMORY[0x277CBEBF8];
  }

  v9 = logForCSLogCategoryDefault(v6);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = *(a1 + 32);
    v11 = *(a1 + 48);
    *buf = 138412546;
    v23 = v10;
    v24 = 2112;
    v25 = v11;
    _os_log_impl(&dword_231A35000, v9, OS_LOG_TYPE_INFO, "adding contacts interaction %@ identifiers %@", buf, 0x16u);
  }

  v12 = +[SPCoreSpotlightIndexer sharedInstance];
  v13 = *MEMORY[0x277CCA1A0];
  v14 = *(a1 + 48);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __80__SPCoreSpotlightInteractionHandler_handleInteraction_bundleID_protectionClass___block_invoke_9;
  v17[3] = &unk_278934108;
  v18 = v14;
  v19 = *(a1 + 40);
  v20 = v3;
  v21 = v4;
  v15 = v4;
  v16 = v3;
  [v12 fetchAttributesForProtectionClass:v13 attributes:v8 bundleID:@"com.apple.MobileAddressBook" identifiers:v18 completion:v17];
}

void __80__SPCoreSpotlightInteractionHandler_handleInteraction_bundleID_protectionClass___block_invoke_9(uint64_t a1, void *a2)
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v37 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v39 objects:v50 count:16];
  if (v4)
  {
    v5 = v4;
    v38 = *v40;
    v36 = *MEMORY[0x277CC2E20];
    v35 = *MEMORY[0x277CC2D10];
    v32 = *MEMORY[0x277CC2E38];
    v33 = *MEMORY[0x277CBEEE8];
    v31 = v3;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v40 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v39 + 1) + 8 * i);
        v8 = [v3 objectForKey:v7];

        if (v8)
        {
          v10 = objc_opt_new();
          [v10 setBundleID:@"com.apple.MobileAddressBook"];
          [v10 setUniqueIdentifier:v7];
          [v10 setIsUpdate:1];
          if ([*(a1 + 40) isEqualToString:v36])
          {
            v11 = [v3 objectForKey:v7];
            v12 = v11;
            if (v11)
            {
              v13 = [v11 firstObject];
              v14 = [v12 objectAtIndex:1];
              if (v13 && v13 != v33)
              {
                v15 = [v13 mutableCopy];
                v16 = MEMORY[0x277CCABB0];
                v17 = [v13 objectAtIndexedSubscript:0];
                v18 = [v16 numberWithUnsignedLongLong:{objc_msgSend(v17, "unsignedLongLongValue") + 1}];
                [v15 setObject:v18 atIndexedSubscript:0];

                v3 = v31;
                v19 = [v15 copy];

                v13 = v15;
LABEL_17:

                if (!v14 || v14 == v33)
                {
                  v21 = &unk_2846C9140;
                }

                else
                {
                  v23 = [v14 mutableCopy];
                  v24 = MEMORY[0x277CCABB0];
                  v25 = [v14 objectAtIndexedSubscript:0];
                  v26 = [v24 numberWithUnsignedLongLong:{objc_msgSend(v25, "unsignedLongLongValue") + 1}];
                  [v23 setObject:v26 atIndexedSubscript:0];

                  v3 = v31;
                  v21 = [v23 copy];

                  v14 = v23;
                }

                v27 = objc_alloc(MEMORY[0x277CC34B8]);
                v28 = *(a1 + 48);
                v46[0] = *(a1 + 40);
                v46[1] = v32;
                v47[0] = v19;
                v47[1] = v21;
                v46[2] = v35;
                v47[2] = v28;
                v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:3];
                v29 = [v27 initWithAttributes:v22];
                [v10 setAttributeSet:v29];

LABEL_22:
                [v37 addObject:v10];
                goto LABEL_23;
              }
            }

            else
            {
              v13 = 0;
              v14 = 0;
            }

            v19 = &unk_2846C9128;
            goto LABEL_17;
          }

          v12 = [MEMORY[0x277CCACA8] stringWithFormat:@":A:%@", *(a1 + 40)];
          v20 = objc_alloc(MEMORY[0x277CC34B8]);
          v43 = *(a1 + 56);
          v44[0] = v12;
          v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:1];
          v44[1] = v35;
          v45[0] = v19;
          v45[1] = *(a1 + 48);
          v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:2];
          v22 = [v20 initWithAttributes:v21];
          [v10 setAttributeSet:v22];
          goto LABEL_22;
        }

        v10 = logForCSLogCategoryDefault(v9);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v49 = v7;
          _os_log_impl(&dword_231A35000, v10, OS_LOG_TYPE_DEFAULT, "interaction-related identifier not indexed %@", buf, 0xCu);
        }

LABEL_23:
      }

      v5 = [obj countByEnumeratingWithState:&v39 objects:v50 count:16];
    }

    while (v5);
  }

  v30 = +[SPCoreSpotlightIndexer sharedInstance];
  [v30 indexSearchableItems:v37 deleteSearchableItemsWithIdentifiers:0 clientState:0 clientStateName:0 protectionClass:*MEMORY[0x277CCA1A0] forBundleID:@"com.apple.MobileAddressBook" options:0 completionHandler:0];
}

@end