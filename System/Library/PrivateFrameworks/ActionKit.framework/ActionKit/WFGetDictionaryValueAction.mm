@interface WFGetDictionaryValueAction
- (void)runAsynchronouslyWithInput:(id)input;
- (void)setOutputWithValue:(id)value preferredDictionaryType:(id)type contentAttributionSet:(id)set;
@end

@implementation WFGetDictionaryValueAction

- (void)setOutputWithValue:(id)value preferredDictionaryType:(id)type contentAttributionSet:(id)set
{
  v18 = *MEMORY[0x277D85DE8];
  if (value)
  {
    v6 = [MEMORY[0x277CFC388] itemsWithPropertyListObject:value preferredDictionaryType:type attributionSet:set];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v13 + 1) + 8 * v10);
          output = [(WFGetDictionaryValueAction *)self output];
          [output addItem:v11];

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }
}

- (void)runAsynchronouslyWithInput:(id)input
{
  inputCopy = input;
  v5 = objc_opt_class();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__WFGetDictionaryValueAction_runAsynchronouslyWithInput___block_invoke;
  v6[3] = &unk_278C211D0;
  v6[4] = self;
  [inputCopy generateCollectionByCoercingToItemClass:v5 completionHandler:v6];
}

void __57__WFGetDictionaryValueAction_runAsynchronouslyWithInput___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v63 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [a2 items];
  v8 = [v7 firstObject];

  v9 = [v8 dictionary];
  if (v9)
  {
    v10 = [*(a1 + 32) parameterValueForKey:@"WFGetDictionaryValueType" ofClass:objc_opt_class()];
    if ([v10 isEqualToString:@"All Values"])
    {
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v11 = [v9 allValues];
      v12 = [v11 countByEnumeratingWithState:&v55 objects:v62 count:16];
      if (v12)
      {
        v13 = v12;
        v47 = v6;
        v48 = v10;
        v46 = v9;
        v14 = *v56;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v56 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v55 + 1) + 8 * i);
            v17 = *(a1 + 32);
            v18 = [v8 preferredFileType];
            v19 = [v8 attributionSet];
            [v17 setOutputWithValue:v16 preferredDictionaryType:v18 contentAttributionSet:v19];
          }

          v13 = [v11 countByEnumeratingWithState:&v55 objects:v62 count:16];
        }

        while (v13);
LABEL_20:
        v9 = v46;
        v6 = v47;
LABEL_21:
        v10 = v48;
        goto LABEL_22;
      }

      goto LABEL_22;
    }

    if ([v10 isEqualToString:@"All Keys"])
    {
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v11 = [v9 allKeys];
      v20 = [v11 countByEnumeratingWithState:&v51 objects:v61 count:16];
      if (v20)
      {
        v21 = v20;
        v47 = v6;
        v48 = v10;
        v46 = v9;
        v22 = *v52;
        do
        {
          for (j = 0; j != v21; ++j)
          {
            if (*v52 != v22)
            {
              objc_enumerationMutation(v11);
            }

            v24 = *(*(&v51 + 1) + 8 * j);
            v25 = *(a1 + 32);
            v26 = [v8 preferredFileType];
            v27 = [v8 attributionSet];
            [v25 setOutputWithValue:v24 preferredDictionaryType:v26 contentAttributionSet:v27];
          }

          v21 = [v11 countByEnumeratingWithState:&v51 objects:v61 count:16];
        }

        while (v21);
        goto LABEL_20;
      }

LABEL_22:

LABEL_23:
      [*(a1 + 32) finishRunningWithError:0];
LABEL_24:

      goto LABEL_25;
    }

    if (![v10 isEqualToString:@"Value"])
    {
      goto LABEL_23;
    }

    v11 = [*(a1 + 32) parameterValueForKey:@"WFDictionaryKey" ofClass:objc_opt_class()];
    if ([v11 length] || (objc_msgSend(v9, "objectForKey:", v11), v28 = objc_claimAutoreleasedReturnValue(), v28, v28))
    {
      v29 = [v9 objectForKey:v11];
      if (v29)
      {
        v30 = v29;
        v48 = v10;
        v31 = v9;
        v32 = v6;
        v33 = 0;
LABEL_33:
        v34 = *(a1 + 32);
        v35 = [v8 preferredFileType];
        v36 = [v8 attributionSet];
        [v34 setOutputWithValue:v30 preferredDictionaryType:v35 contentAttributionSet:v36];

        v6 = v32;
        v9 = v31;
        goto LABEL_21;
      }

      v50 = 0;
      v30 = [MEMORY[0x277CFC428] evaluateKeyPath:v11 onObject:v9 error:&v50];
      v33 = v50;
      if (v30)
      {
        v48 = v10;
        v31 = v9;
        v32 = v6;
        goto LABEL_33;
      }

      [*(a1 + 32) finishRunningWithError:v33];
    }

    else
    {
      v49 = *(a1 + 32);
      v37 = MEMORY[0x277CCA9B8];
      v38 = *MEMORY[0x277D7CB30];
      v59[0] = *MEMORY[0x277CCA470];
      v39 = WFLocalizedString(@"No Key Provided");
      v60[0] = v39;
      v59[1] = *MEMORY[0x277CCA450];
      WFLocalizedString(@"No key was provided to the Get Dictionary Value action.");
      v41 = v40 = v6;
      v60[1] = v41;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:2];
      v42 = v10;
      v44 = v43 = v9;
      v45 = [v37 errorWithDomain:v38 code:5 userInfo:v44];
      [v49 finishRunningWithError:v45];

      v9 = v43;
      v10 = v42;

      v6 = v40;
    }

    goto LABEL_24;
  }

  [*(a1 + 32) finishRunningWithError:v6];
LABEL_25:
}

@end