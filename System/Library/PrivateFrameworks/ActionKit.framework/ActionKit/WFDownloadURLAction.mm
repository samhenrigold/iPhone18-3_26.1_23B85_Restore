@interface WFDownloadURLAction
- (id)smartPromptWithContentDescription:(id)description contentDestination:(id)destination workflowName:(id)name;
- (void)configureHTTPBodyForRequest:(id)request withMethod:(id)method completionHandler:(id)handler;
- (void)getContentDestinationWithCompletionHandler:(id)handler;
- (void)getContentsOfURLItem:(id)item expectedByteCountHandler:(id)handler writtenByteCountHandler:(id)countHandler completionHandler:(id)completionHandler;
- (void)runAsynchronouslyWithInput:(id)input;
@end

@implementation WFDownloadURLAction

- (id)smartPromptWithContentDescription:(id)description contentDestination:(id)destination workflowName:(id)name
{
  descriptionCopy = description;
  v8 = MEMORY[0x277CCACA8];
  nameCopy = name;
  destinationCopy = destination;
  if (descriptionCopy)
  {
    v11 = WFLocalizedString(@"Allow “%1$@” to send %2$@ to “%3$@”?");
    [v8 localizedStringWithFormat:v11, nameCopy, descriptionCopy, destinationCopy];
  }

  else
  {
    v11 = WFLocalizedString(@"Allow “%1$@” to connect to “%2$@”?");
    [v8 localizedStringWithFormat:v11, nameCopy, destinationCopy, v14];
  }
  v12 = ;

  return v12;
}

- (void)getContentDestinationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  input = [(WFDownloadURLAction *)self input];
  WFGetContentLocationFromURLActionInput();
}

- (void)configureHTTPBodyForRequest:(id)request withMethod:(id)method completionHandler:(id)handler
{
  v54 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  handlerCopy = handler;
  if (![method isEqualToString:@"GET"])
  {
    v10 = [(WFDownloadURLAction *)self parameterValueForKey:@"WFHTTPBodyType" ofClass:objc_opt_class()];
    if ([v10 isEqualToString:@"File"])
    {
      v11 = [(WFDownloadURLAction *)self parameterValueForKey:@"WFRequestVariable" ofClass:objc_opt_class()];
      if (v11)
      {
        v43[0] = MEMORY[0x277D85DD0];
        v43[1] = 3221225472;
        v43[2] = __80__WFDownloadURLAction_configureHTTPBodyForRequest_withMethod_completionHandler___block_invoke;
        v43[3] = &unk_278C216C8;
        v44 = requestCopy;
        v45 = handlerCopy;
        [v11 getFileRepresentation:v43 forType:0];
      }

      else
      {
        (*(handlerCopy + 2))(handlerCopy, 0);
      }

      goto LABEL_15;
    }

    v12 = [v10 isEqualToString:@"JSON"];
    v13 = [v10 isEqualToString:@"Form"];
    v14 = v13;
    if ((v12 & 1) == 0 && !v13)
    {
LABEL_8:
      (*(handlerCopy + 2))(handlerCopy, 0);
LABEL_15:

      goto LABEL_16;
    }

    if (v12)
    {
      v15 = [(WFDownloadURLAction *)self parameterValueForKey:@"WFJSONValues" ofClass:objc_opt_class()];
      if (!v15)
      {
        goto LABEL_8;
      }

      v16 = v15;
      if (!v14)
      {
LABEL_28:
        v22 = MEMORY[0x277CFC6A0];
        if (!v12)
        {
          v22 = MEMORY[0x277CFC6A8];
        }

        v23 = MEMORY[0x277CFC388];
        v24 = *v22;
        allValues = [v23 itemWithObject:v16];
        v36[0] = MEMORY[0x277D85DD0];
        v36[1] = 3221225472;
        v36[2] = __80__WFDownloadURLAction_configureHTTPBodyForRequest_withMethod_completionHandler___block_invoke_2;
        v36[3] = &unk_278C216C8;
        v37 = requestCopy;
        v38 = handlerCopy;
        v25 = [MEMORY[0x277D79F68] typeFromMIMEType:v24];

        [allValues getFileRepresentation:v36 forType:v25];
LABEL_32:

        goto LABEL_15;
      }
    }

    else
    {
      if ((v13 & 1) == 0)
      {
        goto LABEL_8;
      }

      v16 = [(WFDownloadURLAction *)self parameterValueForKey:@"WFFormValues" ofClass:objc_opt_class()];
      if (!v16)
      {
        goto LABEL_8;
      }
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v35 = v16;
    allValues = [v16 allValues];
    v18 = [allValues countByEnumeratingWithState:&v39 objects:v53 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v40;
      while (2)
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v40 != v20)
          {
            objc_enumerationMutation(allValues);
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v26 = requestCopy;
            v27 = v35;
            v28 = handlerCopy;
            v29 = objc_opt_new();
            allKeys = [v27 allKeys];
            v50[0] = MEMORY[0x277D85DD0];
            v50[1] = 3221225472;
            v50[2] = __WFConfigureRequestBodyWithMultipartFormDictionary_block_invoke;
            v50[3] = &unk_278C1AE10;
            v51 = v27;
            v31 = v29;
            v52 = v31;
            v46[0] = MEMORY[0x277D85DD0];
            v46[1] = 3221225472;
            v46[2] = __WFConfigureRequestBodyWithMultipartFormDictionary_block_invoke_3;
            v46[3] = &unk_278C1AE38;
            v47 = v26;
            v48 = v31;
            v49 = v28;
            v32 = v28;
            v33 = v31;
            v34 = v26;
            v16 = v27;
            [allKeys if_enumerateAsynchronouslyInSequence:v50 completionHandler:v46];

            goto LABEL_32;
          }
        }

        v19 = [allValues countByEnumeratingWithState:&v39 objects:v53 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }
    }

    v16 = v35;
    goto LABEL_28;
  }

  (*(handlerCopy + 2))(handlerCopy, 0);
LABEL_16:
}

void __80__WFDownloadURLAction_configureHTTPBodyForRequest_withMethod_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  WFConfigureRequestBodyWithFile(v5, a2);
  (*(*(a1 + 40) + 16))();
}

void __80__WFDownloadURLAction_configureHTTPBodyForRequest_withMethod_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  WFConfigureRequestBodyWithFile(v5, a2);
  (*(*(a1 + 40) + 16))();
}

- (void)getContentsOfURLItem:(id)item expectedByteCountHandler:(id)handler writtenByteCountHandler:(id)countHandler completionHandler:(id)completionHandler
{
  itemCopy = item;
  handlerCopy = handler;
  countHandlerCopy = countHandler;
  completionHandlerCopy = completionHandler;
  v14 = [(WFDownloadURLAction *)self parameterValueForKey:@"WFHTTPMethod" ofClass:objc_opt_class()];
  v15 = [(WFDownloadURLAction *)self parameterValueForKey:@"WFHTTPHeaders" ofClass:objc_opt_class()];
  v16 = objc_alloc(MEMORY[0x277CBAB50]);
  v17 = [itemCopy URL];
  v18 = [v16 initWithURL:v17];

  [v18 _setNonAppInitiated:1];
  [v18 setHTTPMethod:v14];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __111__WFDownloadURLAction_getContentsOfURLItem_expectedByteCountHandler_writtenByteCountHandler_completionHandler___block_invoke;
  v31[3] = &unk_278C1ADC0;
  v19 = v18;
  v32 = v19;
  [v15 enumerateKeysAndObjectsUsingBlock:v31];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __111__WFDownloadURLAction_getContentsOfURLItem_expectedByteCountHandler_writtenByteCountHandler_completionHandler___block_invoke_2;
  v25[3] = &unk_278C1ADE8;
  v26 = itemCopy;
  v27 = v19;
  v28 = completionHandlerCopy;
  v29 = handlerCopy;
  v30 = countHandlerCopy;
  v20 = countHandlerCopy;
  v21 = handlerCopy;
  v22 = v19;
  v23 = itemCopy;
  v24 = completionHandlerCopy;
  [(WFDownloadURLAction *)self configureHTTPBodyForRequest:v22 withMethod:v14 completionHandler:v25];
}

void __111__WFDownloadURLAction_getContentsOfURLItem_expectedByteCountHandler_writtenByteCountHandler_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(*(a1 + 48) + 16);

    v3();
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __111__WFDownloadURLAction_getContentsOfURLItem_expectedByteCountHandler_writtenByteCountHandler_completionHandler___block_invoke_3;
    v8[3] = &unk_278C216C8;
    v10 = *(a1 + 48);
    v9 = *(a1 + 32);
    [v4 getContentsWithRequest:v5 expectedByteCountHandler:v6 writtenByteCountHandler:v7 completionHandler:v8];
  }
}

void __111__WFDownloadURLAction_getContentsOfURLItem_expectedByteCountHandler_writtenByteCountHandler_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v8 = a1 + 32;
  v7 = *(a1 + 32);
  v6 = *(v8 + 8);
  v9 = a3;
  v10 = [v7 attributionSet];
  v17 = v5;
  v11 = v10;
  v12 = [v17 wfType];
  if ([v12 conformsToUTType:*MEMORY[0x277CE1DC8]])
  {
    v13 = [MEMORY[0x277CFC388] itemsWithJSONFileRepresentation:v17 attributionSet:v11];
LABEL_5:
    v14 = v13;
    goto LABEL_6;
  }

  if ([v12 conformsToString:*MEMORY[0x277CFC6F0]])
  {
    v13 = [MEMORY[0x277CFC388] itemsWithPlistFileRepresentation:v17 attributionSet:v11];
    goto LABEL_5;
  }

  if (v17)
  {
    v15 = objc_alloc(MEMORY[0x277CBEA60]);
    v16 = [MEMORY[0x277CFC2F8] itemWithFile:v17 attributionSet:v11];
    v14 = [v15 initWithObjects:{v16, 0}];
  }

  else
  {
    v14 = MEMORY[0x277CBEBF8];
  }

LABEL_6:

  (*(v6 + 16))(v6, v14, v9);
}

- (void)runAsynchronouslyWithInput:(id)input
{
  inputCopy = input;
  v5 = objc_opt_class();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__WFDownloadURLAction_runAsynchronouslyWithInput___block_invoke;
  v6[3] = &unk_278C211D0;
  v6[4] = self;
  [inputCopy generateCollectionByCoercingToItemClass:v5 completionHandler:v6];
}

void __50__WFDownloadURLAction_runAsynchronouslyWithInput___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v22[2] = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  if ([v6 numberOfItems])
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __50__WFDownloadURLAction_runAsynchronouslyWithInput___block_invoke_2;
    v18[3] = &unk_278C1AD98;
    v8 = v7;
    v9 = *(a1 + 32);
    v19 = v8;
    v20 = v9;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __50__WFDownloadURLAction_runAsynchronouslyWithInput___block_invoke_6;
    v17[3] = &unk_278C21E70;
    v17[4] = v9;
    [v6 transformItemsAndFlattenUsingBlock:v18 completionHandler:v17];
    v10 = v19;
  }

  else
  {
    v11 = *(a1 + 32);
    v12 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277D7CB30];
    v21[0] = *MEMORY[0x277CCA470];
    v10 = WFLocalizedString(@"No URL Specified");
    v22[0] = v10;
    v21[1] = *MEMORY[0x277CCA450];
    v14 = WFLocalizedString(@"Make sure to pass a valid URL to the Get Contents of URL action.");
    v22[1] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
    v16 = [v12 errorWithDomain:v13 code:6 userInfo:v15];
    [v11 finishRunningWithError:v16];
  }
}

void __50__WFDownloadURLAction_runAsynchronouslyWithInput___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5)
  {
    (*(v6 + 2))(v6, 0, *(a1 + 32));
  }

  v8 = *(a1 + 40);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __50__WFDownloadURLAction_runAsynchronouslyWithInput___block_invoke_3;
  v15[3] = &unk_278C1AD70;
  v15[4] = v8;
  v13 = v7;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __50__WFDownloadURLAction_runAsynchronouslyWithInput___block_invoke_4;
  v14[3] = &unk_278C1AD70;
  v14[4] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __50__WFDownloadURLAction_runAsynchronouslyWithInput___block_invoke_5;
  v11[3] = &unk_278C21AE8;
  v12 = v5;
  v9 = v7;
  v10 = v5;
  [v8 getContentsOfURLItem:v10 expectedByteCountHandler:v15 writtenByteCountHandler:v14 completionHandler:v11];
}

void __50__WFDownloadURLAction_runAsynchronouslyWithInput___block_invoke_6(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setOutput:a2];
  [*(a1 + 32) finishRunningWithError:v6];
}

void __50__WFDownloadURLAction_runAsynchronouslyWithInput___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) progress];
  [v3 setTotalUnitCount:{objc_msgSend(v3, "totalUnitCount") + a2}];
}

void __50__WFDownloadURLAction_runAsynchronouslyWithInput___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) progress];
  [v3 setCompletedUnitCount:{objc_msgSend(v3, "completedUnitCount") + a2}];
}

void __50__WFDownloadURLAction_runAsynchronouslyWithInput___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) URL];
  if ([v6 isFileURL])
  {
    v7 = [v5 domain];
    if ([v7 isEqualToString:*MEMORY[0x277CCA738]])
    {
      v8 = [v5 code];

      if (v8 != -1100)
      {
        goto LABEL_7;
      }

      v6 = v5;
      v5 = 0;
    }

    else
    {
    }
  }

LABEL_7:
  (*(*(a1 + 40) + 16))();
}

@end