@interface WFGetItemFromListAction
- (void)runWithInput:(id)input error:(id *)error;
@end

@implementation WFGetItemFromListAction

- (void)runWithInput:(id)input error:(id *)error
{
  v67[1] = *MEMORY[0x277D85DE8];
  getListRepresentation = [input getListRepresentation];
  numberOfItems = [getListRepresentation numberOfItems];
  if (numberOfItems)
  {
    v8 = numberOfItems;
    v9 = [(WFGetItemFromListAction *)self parameterValueForKey:@"WFItemSpecifier" ofClass:objc_opt_class()];
    if ([v9 isEqualToString:@"First Item"])
    {
      output = [(WFGetItemFromListAction *)self output];
      items = [getListRepresentation items];
      firstObject = [items firstObject];
LABEL_8:
      v13 = firstObject;
      [output addItem:firstObject];

      goto LABEL_9;
    }

    if ([v9 isEqualToString:@"Last Item"])
    {
      output = [(WFGetItemFromListAction *)self output];
      items = [getListRepresentation items];
      firstObject = [items lastObject];
      goto LABEL_8;
    }

    if ([v9 isEqualToString:@"Random Item"])
    {
      output = [(WFGetItemFromListAction *)self output];
      items = [getListRepresentation items];
      firstObject = [items objectAtIndex:arc4random_uniform(v8)];
      goto LABEL_8;
    }

    if ([v9 isEqualToString:@"Item At Index"])
    {
      v14 = [(WFGetItemFromListAction *)self parameterValueForKey:@"WFItemIndex" ofClass:objc_opt_class()];
      integerValue = [v14 integerValue];
      v16 = integerValue;
      if (v14 && integerValue > 0)
      {
        if (integerValue <= v8)
        {
          output2 = [(WFGetItemFromListAction *)self output];
          items2 = [getListRepresentation items];
          v33 = [items2 objectAtIndex:v16 - 1];
          [output2 addItem:v33];
        }

        else
        {
          v17 = MEMORY[0x277CCA9B8];
          v18 = *MEMORY[0x277CCA5B8];
          v64 = *MEMORY[0x277CCA450];
          v19 = MEMORY[0x277CCACA8];
          v20 = WFLocalizedString(@"The index you specified was outside of the possible range (you asked for item %1$d, and the list has only %2$d).");
          v21 = [v19 localizedStringWithFormat:v20, v16, v8];
          v65 = v21;
          v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
          *error = [v17 errorWithDomain:v18 code:33 userInfo:v22];
        }
      }

      else
      {
        v25 = MEMORY[0x277CCA9B8];
        v26 = *MEMORY[0x277CCA5B8];
        v66 = *MEMORY[0x277CCA450];
        v27 = MEMORY[0x277CCACA8];
        v28 = WFLocalizedString(@"You asked for item %d, but the first item is at index 1.");
        v29 = [v27 localizedStringWithFormat:v28, v16];
        v67[0] = v29;
        v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v67 forKeys:&v66 count:1];
        *error = [v25 errorWithDomain:v26 code:33 userInfo:v30];
      }

      goto LABEL_9;
    }

    if (![v9 isEqualToString:@"Items in Range"])
    {
LABEL_9:

      goto LABEL_10;
    }

    v23 = [(WFGetItemFromListAction *)self parameterValueForKey:@"WFItemRangeStart" ofClass:objc_opt_class()];
    v57 = v23;
    if (v23)
    {
      integerValue2 = [v23 integerValue];
    }

    else
    {
      integerValue2 = 1;
    }

    v34 = [(WFGetItemFromListAction *)self parameterValueForKey:@"WFItemRangeEnd" ofClass:objc_opt_class()];
    v35 = v34;
    if (v34)
    {
      integerValue3 = [v34 integerValue];
    }

    else
    {
      integerValue3 = [getListRepresentation numberOfItems];
    }

    v37 = integerValue3;
    if (integerValue2 <= 0)
    {
      v55 = MEMORY[0x277CCA9B8];
      v38 = *MEMORY[0x277CCA5B8];
      v62 = *MEMORY[0x277CCA450];
      v45 = MEMORY[0x277CCACA8];
      v40 = WFLocalizedString(@"The range you specified was outside of the possible range (you asked for items %1$d through %2$d, but the first item is at index 1).");
      v41 = [v45 stringWithFormat:v40, integerValue2, v37];
      v63 = v41;
      v42 = MEMORY[0x277CBEAC0];
      v43 = &v63;
      v44 = &v62;
    }

    else
    {
      if (integerValue3 >= integerValue2)
      {
        if (integerValue3 <= v8)
        {
          v50 = integerValue2 - 1;
          do
          {
            output3 = [(WFGetItemFromListAction *)self output];
            items3 = [getListRepresentation items];
            v53 = [items3 objectAtIndex:v50];
            [output3 addItem:v53];

            ++v50;
          }

          while (v37 != v50);
          goto LABEL_32;
        }

        v56 = MEMORY[0x277CCA9B8];
        v54 = *MEMORY[0x277CCA5B8];
        v58 = *MEMORY[0x277CCA450];
        v49 = MEMORY[0x277CCACA8];
        v40 = WFLocalizedString(@"The range you specified was outside of the possible range (you asked for items %1$d through %2$d, and the list has only %3$d).");
        v41 = [v49 stringWithFormat:v40, integerValue2, v37, v8];
        v59 = v41;
        v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
        v48 = v54;
        v47 = v56;
LABEL_31:
        *error = [v47 errorWithDomain:v48 code:33 userInfo:v46];

LABEL_32:
        goto LABEL_9;
      }

      v55 = MEMORY[0x277CCA9B8];
      v38 = *MEMORY[0x277CCA5B8];
      v60 = *MEMORY[0x277CCA450];
      v39 = MEMORY[0x277CCACA8];
      v40 = WFLocalizedString(@"The range you specified was invalid (you asked for items %1$d through %2$d).");
      v41 = [v39 stringWithFormat:v40, integerValue2, v37];
      v61 = v41;
      v42 = MEMORY[0x277CBEAC0];
      v43 = &v61;
      v44 = &v60;
    }

    v46 = [v42 dictionaryWithObjects:v43 forKeys:v44 count:1];
    v47 = v55;
    v48 = v38;
    goto LABEL_31;
  }

LABEL_10:
}

@end