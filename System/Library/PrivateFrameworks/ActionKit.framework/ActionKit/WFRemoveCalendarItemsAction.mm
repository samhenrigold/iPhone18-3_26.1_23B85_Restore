@interface WFRemoveCalendarItemsAction
- (Class)contentItemClass;
- (id)accessResource;
- (unint64_t)entityType;
- (void)deleteItems:(id)items;
- (void)runAsynchronouslyWithInput:(id)input;
@end

@implementation WFRemoveCalendarItemsAction

- (void)deleteItems:(id)items
{
  v44 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  if ([(WFRemoveCalendarItemsAction *)self entityType])
  {
    v4 = WFGetWorkflowReminderStore();
    v38 = 0;
    v39 = &v38;
    v40 = 0x2050000000;
    v5 = getREMSaveRequestClass_softClass;
    v41 = getREMSaveRequestClass_softClass;
    if (!getREMSaveRequestClass_softClass)
    {
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __getREMSaveRequestClass_block_invoke;
      v37[3] = &unk_278C222B8;
      v37[4] = &v38;
      __getREMSaveRequestClass_block_invoke(v37);
      v5 = v39[3];
    }

    v6 = v5;
    _Block_object_dispose(&v38, 8);
    v7 = [[v5 alloc] initWithStore:v4];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v8 = itemsCopy;
    v9 = [v8 countByEnumeratingWithState:&v28 objects:v42 count:16];
    if (v9)
    {
      v10 = *v29;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v29 != v10)
          {
            objc_enumerationMutation(v8);
          }

          reminder = [*(*(&v28 + 1) + 8 * i) reminder];
          v13 = [v7 updateReminder:reminder];

          [v13 removeFromList];
        }

        v9 = [v8 countByEnumeratingWithState:&v28 objects:v42 count:16];
      }

      while (v9);
    }

    v14 = dispatch_get_global_queue(0, 0);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __43__WFRemoveCalendarItemsAction_deleteItems___block_invoke;
    v27[3] = &unk_278C221F8;
    v27[4] = self;
    [v7 saveWithQueue:v14 completion:v27];
  }

  else
  {
    v15 = [(WFRemoveCalendarItemsAction *)self parameterValueForKey:@"WFCalendarIncludeFutureEvents" ofClass:objc_opt_class()];
    bOOLValue = [v15 BOOLValue];

    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    v33 = 0u;
    v17 = itemsCopy;
    v18 = [v17 countByEnumeratingWithState:&v33 objects:v43 count:16];
    if (v18)
    {
      v19 = *v34;
      while (2)
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v34 != v19)
          {
            objc_enumerationMutation(v17);
          }

          v21 = *(*(&v33 + 1) + 8 * j);
          eventStore = [v21 eventStore];
          event = [v21 event];
          v32 = 0;
          v24 = [eventStore removeEvent:event span:bOOLValue commit:1 error:&v32];
          v25 = v32;

          if ((v24 & 1) == 0)
          {
            [(WFRemoveCalendarItemsAction *)self finishRunningWithError:v25];

            goto LABEL_22;
          }
        }

        v18 = [v17 countByEnumeratingWithState:&v33 objects:v43 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

    [(WFRemoveCalendarItemsAction *)self finishRunningWithError:0];
  }

LABEL_22:
}

- (void)runAsynchronouslyWithInput:(id)input
{
  v24 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  accessResource = [(WFRemoveCalendarItemsAction *)self accessResource];
  if ([accessResource status] == 4)
  {
    [(WFRemoveCalendarItemsAction *)self entityType];
    v22 = 0;
    v6 = [inputCopy collectionByFilteringToItemClass:objc_opt_class() excludedItems:&v22];
    v7 = v22;
    items = [v6 items];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v17 = v7;
    items2 = [v7 items];
    v10 = [items2 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        v13 = 0;
        do
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(items2);
          }

          v14 = *(*(&v18 + 1) + 8 * v13);
          output = [(WFRemoveCalendarItemsAction *)self output];
          [output addItem:v14];

          ++v13;
        }

        while (v11 != v13);
        v11 = [items2 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v11);
    }

    if ([items count])
    {
      [(WFRemoveCalendarItemsAction *)self deleteItems:items];
    }

    else
    {
      [(WFRemoveCalendarItemsAction *)self finishRunningWithError:0];
    }
  }

  else
  {
    availabilityError = [accessResource availabilityError];
    [(WFRemoveCalendarItemsAction *)self finishRunningWithError:availabilityError];
  }
}

- (id)accessResource
{
  resourceManager = [(WFRemoveCalendarItemsAction *)self resourceManager];
  [(WFRemoveCalendarItemsAction *)self entityType];
  v4 = [resourceManager resourceObjectsOfClass:objc_opt_class()];
  anyObject = [v4 anyObject];

  return anyObject;
}

- (Class)contentItemClass
{
  definition = [(WFRemoveCalendarItemsAction *)self definition];
  v3 = [definition objectForKey:@"WFCalendarItemEntityType"];
  [v3 isEqualToString:@"Event"];

  v4 = objc_opt_class();

  return v4;
}

- (unint64_t)entityType
{
  definition = [(WFRemoveCalendarItemsAction *)self definition];
  v3 = [definition objectForKey:@"WFCalendarItemEntityType"];
  v4 = [v3 isEqualToString:@"Event"];

  return v4 ^ 1u;
}

@end