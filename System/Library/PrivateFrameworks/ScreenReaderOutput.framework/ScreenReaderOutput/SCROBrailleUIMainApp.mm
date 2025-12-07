@interface SCROBrailleUIMainApp
- (BOOL)_hasPopUp;
- (BOOL)_isInputBraille:(id)braille partOfText:(id)text;
- (BOOL)_isOpen;
- (BOOL)_isShowingInlineResult;
- (id)_calculatorFormatter;
- (id)_currentDateTimeListItemWithDetails:(BOOL)details;
- (id)_mathCodeForPrintNumber:(id)number;
- (id)_nemethForPrintNumber:(id)number;
- (id)_stringBySanitizingWhitespaces:(id)whitespaces;
- (id)_uebMathForPrintNumber:(id)number;
- (id)views;
- (int64_t)_indexForMenuItem:(unint64_t)item;
- (void)_closeInLineResult;
- (void)_closePopUp;
- (void)_handleActionInAppList:(id)list;
- (void)_handleActionInChooseItemResult:(id)result;
- (void)_handleActionInLaunchAppResult:(id)result;
- (void)_handleActionInNemethCalculatorResult:(id)result;
- (void)_handleActionInPopUp:(id)up;
- (void)_replaceCalculatorListItemContentWith:(id)with;
- (void)_runTimerUpdate;
- (void)_sendAnalytics;
- (void)_setUpDateTimeTimer;
- (void)_showInlineResultWithIdentifier:(id)identifier items:(id)items;
- (void)_showMatchingResultWithIdentifier:(id)identifier fromArray:(id)array withDecodingMap:(id)map;
- (void)_showPopUpWithIdentifier:(id)identifier Key:(id)key;
- (void)_updateDateTimeView;
- (void)close;
- (void)handleAction:(id)action;
- (void)handleResponse:(id)response forRequest:(id)request;
- (void)navigateToMenuItem:(unint64_t)item;
- (void)open;
@end

@implementation SCROBrailleUIMainApp

- (void)open
{
  v42 = *MEMORY[0x277D85DE8];
  if (![(SCROBrailleUIMainApp *)self _isOpen])
  {
    v3 = [SCROBrailleUIListItem alloc];
    v4 = SCROBrailleUILocString(@"launch.app.label");
    v5 = [(SCROBrailleUIListItem *)v3 initWithIdentifier:@"launch.app" label:v4 isInline:1];

    v6 = [SCROBrailleUIListItem alloc];
    v7 = SCROBrailleUILocString(@"choose.item.label");
    v8 = [(SCROBrailleUIListItem *)v6 initWithIdentifier:@"choose.item" label:v7 isInline:1];

    v9 = [SCROBrailleUIListItem alloc];
    v10 = SCROBrailleUILocString(@"braille.notes.label");
    v35 = [(SCROBrailleUIListItem *)v9 initWithIdentifier:@"braille.notes" label:v10 isInline:0];

    v11 = [SCROBrailleUIListItem alloc];
    v12 = SCROBrailleUILocString(@"finder.label");
    v13 = [(SCROBrailleUIListItem *)v11 initWithIdentifier:@"finder" label:v12 isInline:0];

    v14 = +[SCROBrailleUISettingsManager sharedInstance];
    if ([v14 calculatorUsesUEBMath])
    {
      v15 = @"nemeth.calculator.label.ueb";
    }

    else
    {
      v15 = @"nemeth.calculator.label";
    }

    v16 = SCROBrailleUILocString(v15);

    v32 = v16;
    v17 = [[SCROBrailleUIListItem alloc] initWithIdentifier:@"nemeth.calculator" label:v16 isInline:1];
    [(SCROBrailleUIListItem *)v17 setIsNemeth:1];
    v18 = [SCROBrailleUIListItem alloc];
    v19 = SCROBrailleUILocString(@"live.captions.label");
    v20 = [(SCROBrailleUIListItem *)v18 initWithIdentifier:@"live.captions" label:v19 isInline:0];

    selfCopy = self;
    v34 = [(SCROBrailleUIMainApp *)self _currentDateTimeListItemWithDetails:0];
    v21 = objc_opt_new();
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v22 = +[SCROBrailleUISettingsManager sharedInstance];
    enabledMainMenuItems = [v22 enabledMainMenuItems];

    v24 = [enabledMainMenuItems countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v38;
      do
      {
        v27 = 0;
        do
        {
          if (*v38 != v26)
          {
            objc_enumerationMutation(enabledMainMenuItems);
          }

          integerValue = [*(*(&v37 + 1) + 8 * v27) integerValue];
          if (integerValue > 2)
          {
            if (integerValue > 4)
            {
              v29 = v20;
              if (integerValue != 5)
              {
                if (integerValue != 6)
                {
                  goto LABEL_22;
                }

                v29 = v34;
              }
            }

            else
            {
              v29 = v13;
              if (integerValue != 3)
              {
                v29 = v17;
              }
            }

LABEL_21:
            [v21 addObject:v29];
            goto LABEL_22;
          }

          v29 = v5;
          if (!integerValue)
          {
            goto LABEL_21;
          }

          v29 = v8;
          if (integerValue == 1)
          {
            goto LABEL_21;
          }

          v29 = v35;
          if (integerValue == 2)
          {
            goto LABEL_21;
          }

LABEL_22:
          ++v27;
        }

        while (v25 != v27);
        v25 = [enabledMainMenuItems countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v25);
    }

    v30 = [[SCROBrailleUIListView alloc] initWithIdentifier:@"com.apple.scrod.braille.ui.main.menu" items:v21];
    [(SCROBrailleUIMainApp *)selfCopy setAppsListView:v30];

    appsListView = [(SCROBrailleUIMainApp *)selfCopy appsListView];
    [appsListView display];

    +[SCROBrailleUIFinderApp ensureBRFContainerExists];
    [(SCROBrailleUIMainApp *)selfCopy _sendAnalytics];
    [(SCROBrailleUIMainApp *)selfCopy _setUpDateTimeTimer];
    v36.receiver = selfCopy;
    v36.super_class = SCROBrailleUIMainApp;
    [(SCROBrailleUIApp *)&v36 open];
  }
}

- (void)_sendAnalytics
{
  v20[7] = *MEMORY[0x277D85DE8];
  v2 = +[SCROBrailleUISettingsManager sharedInstance];
  [v2 isVisualsEnabled];
  v19[0] = &unk_287651BF0;
  v19[1] = &unk_287651C08;
  v20[0] = @"launchApp";
  v20[1] = @"chooseItem";
  v19[2] = &unk_287651C20;
  v19[3] = &unk_287651C38;
  v20[2] = @"brailleNotes";
  v20[3] = @"brfFiles";
  v19[4] = &unk_287651C50;
  v19[5] = &unk_287651C68;
  v20[4] = @"calculator";
  v20[5] = @"liveCaptions";
  v19[6] = &unk_287651C80;
  v20[6] = @"dateTime";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:7];
  enabledMainMenuItems = [v2 enabledMainMenuItems];
  v5 = [enabledMainMenuItems count];

  if (v5)
  {
    enabledMainMenuItems2 = [v2 enabledMainMenuItems];
    firstObject = [enabledMainMenuItems2 firstObject];
    v8 = [v3 objectForKey:firstObject];
  }

  else
  {
    v8 = @"none";
  }

  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];

  calculatorUsesUEBMath = [v2 calculatorUsesUEBMath];
  v12 = @"Nemeth";
  if (calculatorUsesUEBMath)
  {
    v12 = @"UEB";
  }

  v16 = v8;
  v17 = localeIdentifier;
  v18 = v12;
  v13 = v18;
  v14 = localeIdentifier;
  v15 = v8;
  AnalyticsSendEventLazy();
}

id __38__SCROBrailleUIMainApp__sendAnalytics__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v5[0] = @"showVisualCount";
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 56)];
  v7 = *(a1 + 32);
  v5[1] = @"firstApp";
  v5[2] = @"locale";
  v5[3] = @"mathCode";
  v6 = v2;
  v8 = *(a1 + 48);
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v6 forKeys:v5 count:4];

  return v3;
}

- (void)close
{
  delegate = [(SCROBrailleUIApp *)self delegate];
  [delegate handleDidBrailleUIEnd];

  [(SCROBrailleUIMainApp *)self _closePopUp];
  [(SCROBrailleUIMainApp *)self _closeInLineResult];
  appsListView = [(SCROBrailleUIMainApp *)self appsListView];
  [appsListView dismiss];

  [(SCROBrailleUIMainApp *)self setAppsListView:0];
  v5.receiver = self;
  v5.super_class = SCROBrailleUIMainApp;
  [(SCROBrailleUIApp *)&v5 close];
}

- (void)navigateToMenuItem:(unint64_t)item
{
  [objc_opt_class() closeAllAppsExceptTheLowerMostView];
  v5 = [(SCROBrailleUIMainApp *)self _indexForMenuItem:item];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v5;
    appsListView = [(SCROBrailleUIMainApp *)self appsListView];
    [appsListView setFocusedIndex:v6];

    appsListView2 = [(SCROBrailleUIMainApp *)self appsListView];
    focusedItem = [appsListView2 focusedItem];
    isInline = [focusedItem isInline];

    if (item == 6 || (isInline & 1) == 0)
    {
      v11 = [SCROBrailleUIAction alloc];
      appsListView3 = [(SCROBrailleUIMainApp *)self appsListView];
      v12 = [(SCROBrailleUIAction *)v11 initWithType:1 originator:appsListView3];
      [(SCROBrailleUIMainApp *)self handleAction:v12];
    }
  }
}

- (int64_t)_indexForMenuItem:(unint64_t)item
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = +[SCROBrailleUISettingsManager sharedInstance];
  enabledMainMenuItems = [v4 enabledMainMenuItems];

  v6 = [enabledMainMenuItems countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v14;
LABEL_3:
    v10 = 0;
    v11 = v8;
    v8 += v7;
    while (1)
    {
      if (*v14 != v9)
      {
        objc_enumerationMutation(enabledMainMenuItems);
      }

      if ([*(*(&v13 + 1) + 8 * v10) integerValue] == item)
      {
        break;
      }

      ++v11;
      if (v7 == ++v10)
      {
        v7 = [enabledMainMenuItems countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v11;
}

- (id)views
{
  v3 = objc_opt_new();
  popUpView = [(SCROBrailleUIMainApp *)self popUpView];

  if (popUpView)
  {
    popUpView2 = [(SCROBrailleUIMainApp *)self popUpView];
    [v3 addObject:popUpView2];
  }

  inlineResultView = [(SCROBrailleUIMainApp *)self inlineResultView];

  if (inlineResultView)
  {
    inlineResultView2 = [(SCROBrailleUIMainApp *)self inlineResultView];
    [v3 addObject:inlineResultView2];
  }

  appsListView = [(SCROBrailleUIMainApp *)self appsListView];

  if (appsListView)
  {
    appsListView2 = [(SCROBrailleUIMainApp *)self appsListView];
    [v3 addObject:appsListView2];
  }

  return v3;
}

- (void)handleAction:(id)action
{
  actionCopy = action;
  if ([(SCROBrailleUIMainApp *)self _isOpen])
  {
    if ([(SCROBrailleUIMainApp *)self _hasPopUp])
    {
      [(SCROBrailleUIMainApp *)self _handleActionInPopUp:actionCopy];
    }

    else if ([(SCROBrailleUIMainApp *)self _isShowingInlineResult])
    {
      originator = [actionCopy originator];
      identifier = [originator identifier];
      v6 = [identifier isEqualToString:@"launch.app"];

      if (v6)
      {
        [(SCROBrailleUIMainApp *)self _handleActionInLaunchAppResult:actionCopy];
      }

      else
      {
        originator2 = [actionCopy originator];
        identifier2 = [originator2 identifier];
        v9 = [identifier2 isEqualToString:@"choose.item"];

        if (v9)
        {
          [(SCROBrailleUIMainApp *)self _handleActionInChooseItemResult:actionCopy];
        }

        else
        {
          originator3 = [actionCopy originator];
          identifier3 = [originator3 identifier];
          v12 = [identifier3 isEqualToString:@"nemeth.calculator"];

          if (v12)
          {
            [(SCROBrailleUIMainApp *)self _handleActionInNemethCalculatorResult:actionCopy];
          }
        }
      }
    }

    else
    {
      [(SCROBrailleUIMainApp *)self _handleActionInAppList:actionCopy];
    }
  }
}

- (void)_handleActionInAppList:(id)list
{
  v54[1] = *MEMORY[0x277D85DE8];
  listCopy = list;
  if ([listCopy type] == 1)
  {
    appsListView = [(SCROBrailleUIMainApp *)self appsListView];
    focusedItem = [appsListView focusedItem];
    identifier = [focusedItem identifier];

    if ([identifier isEqualToString:@"launch.app"])
    {
      v53 = kSCROBrailleUIRequestTypeKey[0];
      v54[0] = &unk_287651C20;
      v8 = MEMORY[0x277CBEAC0];
      v9 = v54;
      v10 = &v53;
    }

    else
    {
      if (![identifier isEqualToString:@"choose.item"])
      {
        if ([identifier isEqualToString:@"braille.notes"])
        {
          v13 = SCROBrailleUIBrailleNotesApp;
        }

        else if ([identifier isEqualToString:@"finder"])
        {
          v13 = SCROBrailleUIFinderApp;
        }

        else
        {
          if ([identifier isEqualToString:@"nemeth.calculator"])
          {
            appsListView2 = [(SCROBrailleUIMainApp *)self appsListView];
            value = [appsListView2 value];

            v18 = +[SCROBrailleUISettingsManager sharedInstance];
            calculatorUsesUEBMath = [v18 calculatorUsesUEBMath];

            v20 = [SCROBrailleUIMathString alloc];
            v45 = value;
            if (calculatorUsesUEBMath)
            {
              v21 = [(SCROBrailleUIMathString *)v20 initWithUEBMath:value];
            }

            else
            {
              v21 = [(SCROBrailleUIMathString *)v20 initWithNemeth:value];
            }

            v44 = v21;
            calculateRepresentation = [(SCROBrailleUIMathString *)v21 calculateRepresentation];
            CalculateClass = getCalculateClass();
            v23 = getCalculateKeyNumberFormatter(CalculateClass);
            v49[0] = v23;
            _calculatorFormatter = [(SCROBrailleUIMainApp *)self _calculatorFormatter];
            v50[0] = _calculatorFormatter;
            v25 = getCalculateKeyAssumeDegrees(_calculatorFormatter);
            v49[1] = v25;
            v26 = MEMORY[0x277CBEC38];
            v50[1] = MEMORY[0x277CBEC38];
            v27 = getCalculateKeyAllowPartialExpressions(v25);
            v49[2] = v27;
            v50[2] = v26;
            v28 = getCalculateKeyScientificNotationFormat(v27);
            v49[3] = v28;
            v50[3] = &unk_287651BF0;
            v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:4];
            v30 = CalculateClass;
            v43 = calculateRepresentation;
            v31 = [(objc_class *)v30 evaluate:calculateRepresentation options:v29];

            if (v31)
            {
              formattedResult = [v31 formattedResult];
              [(SCROBrailleUIMainApp *)self setCalculatorResultCache:formattedResult];
              v33 = [(SCROBrailleUIMainApp *)self _mathCodeForPrintNumber:formattedResult];
              v34 = [[SCROBrailleUIListItem alloc] initWithIdentifier:@"nemeth.calculator.output" brailleLabel:v33 isInline:0];
              [(SCROBrailleUIListItem *)v34 setManualCaption:formattedResult];
              v35 = [SCROBrailleUIListItem alloc];
              v36 = SCROBrailleUILocString(@"nemeth.calculator.copy.label");
              v37 = [(SCROBrailleUIListItem *)v35 initWithIdentifier:@"nemeth.calculator.copy" label:v36 isInline:0];

              v48[0] = v34;
              v48[1] = v37;
              v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:2];
              [(SCROBrailleUIMainApp *)self _showInlineResultWithIdentifier:@"nemeth.calculator" items:v38];
            }

            else
            {
              [(SCROBrailleUIMainApp *)self _showPopUpWithIdentifier:@"no.match" Key:@"nemeth.calculator.error"];
            }

            goto LABEL_15;
          }

          if (![identifier isEqualToString:@"live.captions"])
          {
            if (![identifier isEqualToString:@"date.time"])
            {
              goto LABEL_15;
            }

            v11 = [(SCROBrailleUIMainApp *)self _currentDateTimeListItemWithDetails:1];
            v39 = [SCROBrailleUIListView alloc];
            v47 = v11;
            v40 = [MEMORY[0x277CBEA60] arrayWithObjects:&v47 count:1];
            v41 = [(SCROBrailleUIListView *)v39 initWithIdentifier:@"date.time" items:v40];
            [(SCROBrailleUIMainApp *)self setPopUpView:v41];

            popUpView = [(SCROBrailleUIMainApp *)self popUpView];
            [popUpView display];
            goto LABEL_8;
          }

          v13 = SCROBrailleUILiveCaptionsApp;
        }

        v14 = [v13 alloc];
        delegate = [(SCROBrailleUIApp *)self delegate];
        v11 = [v14 initWithDelegate:delegate];

        [v11 open];
        goto LABEL_14;
      }

      v51 = kSCROBrailleUIRequestTypeKey[0];
      v52 = &unk_287651C50;
      v8 = MEMORY[0x277CBEAC0];
      v9 = &v52;
      v10 = &v51;
    }

    v11 = [v8 dictionaryWithObjects:v9 forKeys:v10 count:1];
    popUpView = [(SCROBrailleUIApp *)self delegate];
    [popUpView handleBrailleUIRequest:v11];
LABEL_8:

LABEL_14:
LABEL_15:

    goto LABEL_16;
  }

  v46.receiver = self;
  v46.super_class = SCROBrailleUIMainApp;
  [(SCROBrailleUIApp *)&v46 handleAction:listCopy];
LABEL_16:
}

- (void)_handleActionInLaunchAppResult:(id)result
{
  v13[2] = *MEMORY[0x277D85DE8];
  resultCopy = result;
  type = [resultCopy type];
  if (type == 2)
  {
    [(SCROBrailleUIMainApp *)self _closeInLineResult];
  }

  else if (type == 1)
  {
    inlineResultView = [(SCROBrailleUIMainApp *)self inlineResultView];
    focusedItem = [inlineResultView focusedItem];
    identifier = [focusedItem identifier];

    v12[0] = kSCROBrailleUIRequestTypeKey[0];
    v12[1] = kSCROBrailleUIRequestLaunchAppIDKey[0];
    v13[0] = &unk_287651C38;
    v13[1] = identifier;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
    delegate = [(SCROBrailleUIApp *)self delegate];
    [delegate handleBrailleUIRequest:v9];

    +[SCROBrailleUIApp closeAllApps];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = SCROBrailleUIMainApp;
    [(SCROBrailleUIApp *)&v11 handleAction:resultCopy];
  }
}

- (void)_handleActionInChooseItemResult:(id)result
{
  v14[2] = *MEMORY[0x277D85DE8];
  resultCopy = result;
  type = [resultCopy type];
  if (type == 2)
  {
    [(SCROBrailleUIMainApp *)self _closeInLineResult];
  }

  else if (type == 1)
  {
    inlineResultView = [(SCROBrailleUIMainApp *)self inlineResultView];
    focusedItem = [inlineResultView focusedItem];
    identifier = [focusedItem identifier];

    v13[0] = kSCROBrailleUIRequestTypeKey[0];
    v13[1] = kSCROBrailleUIRequestChooseElementIDKey[0];
    v14[0] = &unk_287651C68;
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(identifier, "integerValue")}];
    v14[1] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

    delegate = [(SCROBrailleUIApp *)self delegate];
    [delegate handleBrailleUIRequest:v10];

    +[SCROBrailleUIApp closeAllApps];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = SCROBrailleUIMainApp;
    [(SCROBrailleUIApp *)&v12 handleAction:resultCopy];
  }
}

- (void)_handleActionInNemethCalculatorResult:(id)result
{
  resultCopy = result;
  type = [resultCopy type];
  switch(type)
  {
    case 4:
      inlineResultView = [(SCROBrailleUIMainApp *)self inlineResultView];
      focusedItem = [inlineResultView focusedItem];
      identifier = [focusedItem identifier];

      if (![identifier isEqualToString:@"nemeth.calculator.output"])
      {
LABEL_15:

        break;
      }

      [(SCROBrailleUIMainApp *)self _replaceCalculatorListItemContentWith:&stru_28763D5C8];
      goto LABEL_14;
    case 2:
      [(SCROBrailleUIMainApp *)self _closeInLineResult];
      break;
    case 1:
      inlineResultView2 = [(SCROBrailleUIMainApp *)self inlineResultView];
      focusedItem2 = [inlineResultView2 focusedItem];
      identifier = [focusedItem2 identifier];

      if ([identifier isEqualToString:@"nemeth.calculator.output"])
      {
        calculatorResultCache = [(SCROBrailleUIMainApp *)self calculatorResultCache];
        calculatorResultCache3 = [(SCROBrailleUIMainApp *)self _mathCodeForPrintNumber:calculatorResultCache];
        [(SCROBrailleUIMainApp *)self _replaceCalculatorListItemContentWith:calculatorResultCache3];
      }

      else
      {
        if (![identifier isEqualToString:@"nemeth.calculator.copy"])
        {
          goto LABEL_14;
        }

        calculatorResultCache2 = [(SCROBrailleUIMainApp *)self calculatorResultCache];

        if (!calculatorResultCache2)
        {
          goto LABEL_14;
        }

        calculatorResultCache = +[SCROBrailleUIPasteBoard sharedBoard];
        calculatorResultCache3 = [(SCROBrailleUIMainApp *)self calculatorResultCache];
        calculatorResultCache4 = [(SCROBrailleUIMainApp *)self calculatorResultCache];
        v15 = [(SCROBrailleUIMainApp *)self _mathCodeForPrintNumber:calculatorResultCache4];
        [calculatorResultCache writeText:calculatorResultCache3 withBraille:v15];
      }

LABEL_14:
      [(SCROBrailleUIMainApp *)self _closeInLineResult];
      goto LABEL_15;
    default:
      v16.receiver = self;
      v16.super_class = SCROBrailleUIMainApp;
      [(SCROBrailleUIApp *)&v16 handleAction:resultCopy];
      break;
  }
}

- (void)_replaceCalculatorListItemContentWith:(id)with
{
  withCopy = with;
  v5 = [SCROBrailleUIListItem alloc];
  appsListView = [(SCROBrailleUIMainApp *)self appsListView];
  focusedItem = [appsListView focusedItem];
  identifier = [focusedItem identifier];
  appsListView2 = [(SCROBrailleUIMainApp *)self appsListView];
  focusedItem2 = [appsListView2 focusedItem];
  label = [focusedItem2 label];
  v15 = [(SCROBrailleUIListItem *)v5 initWithIdentifier:identifier label:label prepopulatedBraille:withCopy shouldBulkSelect:0];

  [(SCROBrailleUIListItem *)v15 setIsNemeth:1];
  appsListView3 = [(SCROBrailleUIMainApp *)self appsListView];
  appsListView4 = [(SCROBrailleUIMainApp *)self appsListView];
  [appsListView3 replaceItemAtIndex:objc_msgSend(appsListView4 with:{"focusedIndex"), v15}];

  appsListView5 = [(SCROBrailleUIMainApp *)self appsListView];
  [appsListView5 display];
}

- (void)_handleActionInPopUp:(id)up
{
  upCopy = up;
  if (([upCopy type] - 1) > 1)
  {
    v5.receiver = self;
    v5.super_class = SCROBrailleUIMainApp;
    [(SCROBrailleUIApp *)&v5 handleAction:upCopy];
  }

  else
  {
    [(SCROBrailleUIMainApp *)self _closePopUp];
  }
}

- (void)handleResponse:(id)response forRequest:(id)request
{
  responseCopy = response;
  requestCopy = request;
  if ([(SCROBrailleUIMainApp *)self _isOpen]&& ![(SCROBrailleUIMainApp *)self _isShowingInlineResult])
  {
    [(SCROBrailleUIMainApp *)self _closePopUp];
    v7 = [requestCopy objectForKeyedSubscript:kSCROBrailleUIRequestTypeKey[0]];
    unsignedIntegerValue = [v7 unsignedIntegerValue];

    if (unsignedIntegerValue == 2)
    {
      v9 = @"launch.app";
      v10 = &__block_literal_global_14;
    }

    else
    {
      if (unsignedIntegerValue != 4)
      {
        goto LABEL_8;
      }

      v9 = @"choose.item";
      v10 = &__block_literal_global_146;
    }

    [(SCROBrailleUIMainApp *)self _showMatchingResultWithIdentifier:v9 fromArray:responseCopy withDecodingMap:v10];
  }

LABEL_8:
}

id __50__SCROBrailleUIMainApp_handleResponse_forRequest___block_invoke(uint64_t a1, void *a2)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = @"name";
  v2 = kSCROBrailleUIResponseAppsInfoAppNameKey[0];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:v2];
  v8[1] = @"ID";
  v9[0] = v4;
  v5 = [v3 objectForKeyedSubscript:kSCROBrailleUIResponseAppsInfoAppIDKey[0]];

  v9[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

  return v6;
}

id __50__SCROBrailleUIMainApp_handleResponse_forRequest___block_invoke_2(uint64_t a1, void *a2)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9[0] = @"name";
  v2 = kSCROBrailleUIResponseElementsInfoElementNameKey[0];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:v2];
  v9[1] = @"ID";
  v10[0] = v4;
  v5 = [v3 objectForKeyedSubscript:kSCROBrailleUIResponseElementsInfoElementIDKey[0]];

  v6 = [v5 stringValue];
  v10[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];

  return v7;
}

- (void)_showMatchingResultWithIdentifier:(id)identifier fromArray:(id)array withDecodingMap:(id)map
{
  v46 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  arrayCopy = array;
  mapCopy = map;
  v33 = objc_opt_new();
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v9 = arrayCopy;
  v10 = mapCopy;
  obj = v9;
  v36 = [v9 countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v36)
  {
    v11 = *v38;
    v12 = mapCopy + 16;
    do
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v38 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v14 = v10[2](v10, *(*(&v37 + 1) + 8 * i));
        v15 = [v14 objectForKeyedSubscript:@"name"];
        v16 = [v14 objectForKeyedSubscript:@"ID"];
        v17 = v16;
        if (v15)
        {
          v18 = v16 == 0;
        }

        else
        {
          v18 = 1;
        }

        if (!v18)
        {
          appsListView = [(SCROBrailleUIMainApp *)self appsListView];
          [appsListView value];
          v20 = v12;
          v21 = v11;
          v23 = v22 = v10;
          v24 = [(SCROBrailleUIMainApp *)self _isInputBraille:v23 partOfText:v15];

          v10 = v22;
          v11 = v21;
          v12 = v20;

          if (v24)
          {
            v25 = [[SCROBrailleUIListItem alloc] initWithIdentifier:v17 label:v15 isInline:0 shouldPreserveCase:1];
            [v33 addObject:v25];
          }
        }
      }

      v36 = [obj countByEnumeratingWithState:&v37 objects:v45 count:16];
    }

    while (v36);
  }

  if ([v33 count])
  {
    v26 = identifierCopy;
    if ([v33 count] == 1)
    {
      v27 = [v33 objectAtIndex:0];
      identifier = [v27 identifier];

      if ([identifierCopy isEqualToString:@"launch.app"])
      {
        v43[0] = kSCROBrailleUIRequestTypeKey[0];
        v43[1] = kSCROBrailleUIRequestLaunchAppIDKey[0];
        v44[0] = &unk_287651C38;
        v44[1] = identifier;
        v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:2];
        if (!v29)
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (![identifierCopy isEqualToString:@"choose.item"])
        {
          goto LABEL_24;
        }

        v41[0] = kSCROBrailleUIRequestTypeKey[0];
        v41[1] = kSCROBrailleUIRequestChooseElementIDKey[0];
        v42[0] = &unk_287651C68;
        v30 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(identifier, "integerValue")}];
        v42[1] = v30;
        v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:2];

        if (!v29)
        {
          goto LABEL_24;
        }
      }

      delegate = [(SCROBrailleUIApp *)self delegate];
      [delegate handleBrailleUIRequest:v29];

      +[SCROBrailleUIApp closeAllApps];
LABEL_24:

      goto LABEL_25;
    }

    [(SCROBrailleUIMainApp *)self _showInlineResultWithIdentifier:identifierCopy items:v33];
  }

  else
  {
    [(SCROBrailleUIMainApp *)self _showPopUpWithIdentifier:@"no.match" Key:@"no.match"];
    v26 = identifierCopy;
  }

LABEL_25:
}

- (BOOL)_isOpen
{
  appsListView = [(SCROBrailleUIMainApp *)self appsListView];
  v3 = appsListView != 0;

  return v3;
}

- (BOOL)_isShowingInlineResult
{
  inlineResultView = [(SCROBrailleUIMainApp *)self inlineResultView];
  v3 = inlineResultView != 0;

  return v3;
}

- (BOOL)_hasPopUp
{
  popUpView = [(SCROBrailleUIMainApp *)self popUpView];
  v3 = popUpView != 0;

  return v3;
}

- (void)_showInlineResultWithIdentifier:(id)identifier items:(id)items
{
  identifierCopy = identifier;
  itemsCopy = items;
  if ([(SCROBrailleUIMainApp *)self _isOpen]&& ![(SCROBrailleUIMainApp *)self _isShowingInlineResult]&& ![(SCROBrailleUIMainApp *)self _hasPopUp])
  {
    v7 = [[SCROBrailleUIListView alloc] initWithIdentifier:identifierCopy items:itemsCopy];
    [(SCROBrailleUIMainApp *)self setInlineResultView:v7];

    inlineResultView = [(SCROBrailleUIMainApp *)self inlineResultView];
    [inlineResultView display];
  }
}

- (void)_showPopUpWithIdentifier:(id)identifier Key:(id)key
{
  v15[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  keyCopy = key;
  if ([(SCROBrailleUIMainApp *)self _isOpen]&& ![(SCROBrailleUIMainApp *)self _hasPopUp])
  {
    v8 = [SCROBrailleUIListItem alloc];
    v9 = SCROBrailleUILocString(keyCopy);
    v10 = [(SCROBrailleUIListItem *)v8 initWithIdentifier:identifierCopy label:v9 isInline:0];

    v11 = [SCROBrailleUIListView alloc];
    v15[0] = v10;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    v13 = [(SCROBrailleUIListView *)v11 initWithIdentifier:@"launch.app" items:v12];
    [(SCROBrailleUIMainApp *)self setPopUpView:v13];

    popUpView = [(SCROBrailleUIMainApp *)self popUpView];
    [popUpView display];
  }
}

- (void)_closeInLineResult
{
  inlineResultView = [(SCROBrailleUIMainApp *)self inlineResultView];
  [inlineResultView dismiss];

  [(SCROBrailleUIMainApp *)self setInlineResultView:0];
}

- (void)_closePopUp
{
  popUpView = [(SCROBrailleUIMainApp *)self popUpView];
  [popUpView dismiss];

  [(SCROBrailleUIMainApp *)self setPopUpView:0];
}

- (BOOL)_isInputBraille:(id)braille partOfText:(id)text
{
  brailleCopy = braille;
  textCopy = text;
  v7 = +[SCROBrailleTranslationManager inputManager];
  v8 = 1;
  v9 = [v7 textForPrintBraille:brailleCopy language:0 mode:1 locations:0];

  v10 = +[SCROBrailleTranslationManager inputManager];
  lowercaseString = [textCopy lowercaseString];
  v12 = [v10 printBrailleForText:lowercaseString language:0 mode:1 textPositionsRange:0x7FFFFFFFFFFFFFFFLL locations:0 textFormattingRanges:{0, 0}];

  if ([brailleCopy length])
  {
    if ([v9 length] && (objc_msgSend(v12, "hasPrefix:", brailleCopy) & 1) == 0)
    {
      localizedLowercaseString = [textCopy localizedLowercaseString];
      localizedLowercaseString2 = [v9 localizedLowercaseString];
      v8 = [localizedLowercaseString hasPrefix:localizedLowercaseString2];
    }

    else
    {
      v8 = 1;
    }
  }

  return v8;
}

- (id)_calculatorFormatter
{
  if (_calculatorFormatter_onceToken != -1)
  {
    [SCROBrailleUIMainApp _calculatorFormatter];
  }

  v3 = _calculatorFormatter_formatter;

  return v3;
}

uint64_t __44__SCROBrailleUIMainApp__calculatorFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCABB8]);
  v1 = _calculatorFormatter_formatter;
  _calculatorFormatter_formatter = v0;

  [_calculatorFormatter_formatter setNumberStyle:1];
  [_calculatorFormatter_formatter setMaximumIntegerDigits:20];
  [_calculatorFormatter_formatter setUsesGroupingSeparator:0];
  [_calculatorFormatter_formatter setUsesSignificantDigits:0];
  v2 = _calculatorFormatter_formatter;

  return [v2 setMaximumFractionDigits:15];
}

- (id)_mathCodeForPrintNumber:(id)number
{
  numberCopy = number;
  v5 = +[SCROBrailleUISettingsManager sharedInstance];
  calculatorUsesUEBMath = [v5 calculatorUsesUEBMath];

  if (calculatorUsesUEBMath)
  {
    [(SCROBrailleUIMainApp *)self _uebMathForPrintNumber:numberCopy];
  }

  else
  {
    [(SCROBrailleUIMainApp *)self _nemethForPrintNumber:numberCopy];
  }
  v7 = ;

  return v7;
}

- (id)_nemethForPrintNumber:(id)number
{
  numberCopy = number;
  v4 = objc_opt_new();
  if ([numberCopy length])
  {
    v5 = 0;
    do
    {
      v6 = [numberCopy substringWithRange:{v5, 1}];
      v7 = [&unk_2876523D8 objectForKeyedSubscript:v6];
      if (v7)
      {
        [v4 appendString:v7];
      }

      ++v5;
    }

    while (v5 < [numberCopy length]);
  }

  return v4;
}

- (id)_uebMathForPrintNumber:(id)number
{
  numberCopy = number;
  v4 = objc_opt_new();
  if ([numberCopy length] && objc_msgSend(numberCopy, "characterAtIndex:", 0) == 45)
  {
    [v4 appendString:@"⠐⠤"];
  }

  [v4 appendString:@"⠼"];
  if ([numberCopy length])
  {
    v5 = 0;
    do
    {
      v6 = [numberCopy substringWithRange:{v5, 1}];
      v7 = [&unk_287652400 objectForKeyedSubscript:v6];
      if (v7)
      {
        [v4 appendString:v7];
      }

      ++v5;
    }

    while (v5 < [numberCopy length]);
  }

  return v4;
}

- (void)_setUpDateTimeTimer
{
  v3 = dispatch_queue_create("com.apple.scrod.braille.ui.date.time", 0);
  dateTimeQueue = self->_dateTimeQueue;
  self->_dateTimeQueue = v3;

  v5 = [MEMORY[0x277CBEAA8] now];
  currentDateTime = self->_currentDateTime;
  self->_currentDateTime = v5;

  v7 = [objc_alloc(MEMORY[0x277CE6950]) initWithTargetSerialQueue:self->_dateTimeQueue];
  dateTimeTimer = self->_dateTimeTimer;
  self->_dateTimeTimer = v7;

  [(SCROBrailleUIMainApp *)self _runTimerUpdate];
}

- (void)_runTimerUpdate
{
  dateTimeTimer = self->_dateTimeTimer;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __39__SCROBrailleUIMainApp__runTimerUpdate__block_invoke;
  v3[3] = &unk_279B73DD0;
  v3[4] = self;
  [(AXDispatchTimer *)dateTimeTimer afterDelay:v3 processBlock:0.1];
}

void __39__SCROBrailleUIMainApp__runTimerUpdate__block_invoke(uint64_t a1)
{
  v7 = [MEMORY[0x277CBEAA8] now];
  v2 = [*(a1 + 32) currentDateTime];
  [v2 timeIntervalSince1970];
  v4 = v3;
  [v7 timeIntervalSince1970];
  v6 = v5;

  if (v4 < v6)
  {
    [*(a1 + 32) setCurrentDateTime:v7];
    [*(a1 + 32) _updateDateTimeView];
  }

  [*(a1 + 32) _runTimerUpdate];
}

- (void)_updateDateTimeView
{
  appsListView = [(SCROBrailleUIMainApp *)self appsListView];
  focusedItem = [appsListView focusedItem];
  identifier = [focusedItem identifier];
  v6 = [identifier isEqualToString:@"date.time"];

  if (v6)
  {
    v7 = [(SCROBrailleUIMainApp *)self _currentDateTimeListItemWithDetails:0];
    appsListView2 = [(SCROBrailleUIMainApp *)self appsListView];
    appsListView3 = [(SCROBrailleUIMainApp *)self appsListView];
    [appsListView2 replaceItemAtIndex:objc_msgSend(appsListView3 with:{"focusedIndex"), v7}];

    appsListView4 = [(SCROBrailleUIMainApp *)self appsListView];
    [appsListView4 displaySilently:1];
  }

  popUpView = [(SCROBrailleUIMainApp *)self popUpView];
  focusedItem2 = [popUpView focusedItem];
  identifier2 = [focusedItem2 identifier];
  v14 = [identifier2 isEqualToString:@"date.time"];

  if (v14)
  {
    v18 = [(SCROBrailleUIMainApp *)self _currentDateTimeListItemWithDetails:1];
    popUpView2 = [(SCROBrailleUIMainApp *)self popUpView];
    popUpView3 = [(SCROBrailleUIMainApp *)self popUpView];
    [popUpView2 replaceItemAtIndex:objc_msgSend(popUpView3 with:{"focusedIndex"), v18}];

    popUpView4 = [(SCROBrailleUIMainApp *)self popUpView];
    [popUpView4 displaySilently:1];
  }
}

- (id)_currentDateTimeListItemWithDetails:(BOOL)details
{
  detailsCopy = details;
  if (!self->_currentDateTime)
  {
    v5 = [MEMORY[0x277CBEAA8] now];
    currentDateTime = self->_currentDateTime;
    self->_currentDateTime = v5;
  }

  if (_currentDateTimeListItemWithDetails__onceToken != -1)
  {
    [SCROBrailleUIMainApp _currentDateTimeListItemWithDetails:];
  }

  v7 = &_currentDateTimeListItemWithDetails__expandedFormatter;
  if (!detailsCopy)
  {
    v7 = &_currentDateTimeListItemWithDetails__formatter;
  }

  v8 = *v7;
  currentDateTime = [(SCROBrailleUIMainApp *)self currentDateTime];
  v10 = [v8 stringFromDate:currentDateTime];

  v11 = [(SCROBrailleUIMainApp *)self _stringBySanitizingWhitespaces:v10];

  v12 = [[SCROBrailleUIListItem alloc] initWithIdentifier:@"date.time" label:v11 isInline:0];
  v13 = SCROBrailleUILocString(@"date.time.label");
  [(SCROBrailleUIListItem *)v12 setManualCaption:v13];

  [(SCROBrailleUIListItem *)v12 setUpdatesAutomatically:1];

  return v12;
}

uint64_t __60__SCROBrailleUIMainApp__currentDateTimeListItemWithDetails___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = _currentDateTimeListItemWithDetails__formatter;
  _currentDateTimeListItemWithDetails__formatter = v0;

  v2 = _currentDateTimeListItemWithDetails__formatter;
  v3 = [MEMORY[0x277CBEAF8] currentLocale];
  [v2 setLocale:v3];

  v4 = _currentDateTimeListItemWithDetails__formatter;
  v5 = [MEMORY[0x277CBEBB0] systemTimeZone];
  [v4 setTimeZone:v5];

  [_currentDateTimeListItemWithDetails__formatter setTimeStyle:2];
  [_currentDateTimeListItemWithDetails__formatter setDateStyle:0];
  v6 = objc_alloc_init(MEMORY[0x277CCA968]);
  v7 = _currentDateTimeListItemWithDetails__expandedFormatter;
  _currentDateTimeListItemWithDetails__expandedFormatter = v6;

  v8 = _currentDateTimeListItemWithDetails__expandedFormatter;
  v9 = [MEMORY[0x277CBEAF8] currentLocale];
  [v8 setLocale:v9];

  v10 = _currentDateTimeListItemWithDetails__expandedFormatter;
  v11 = [MEMORY[0x277CBEBB0] systemTimeZone];
  [v10 setTimeZone:v11];

  [_currentDateTimeListItemWithDetails__expandedFormatter setTimeStyle:3];
  v12 = _currentDateTimeListItemWithDetails__expandedFormatter;

  return [v12 setDateStyle:3];
}

- (id)_stringBySanitizingWhitespaces:(id)whitespaces
{
  v3 = MEMORY[0x277CCA900];
  whitespacesCopy = whitespaces;
  whitespaceNewlineAndSpecialCharacterSet = [v3 whitespaceNewlineAndSpecialCharacterSet];
  v6 = [whitespacesCopy scrStringByReplacingCharactersInSet:whitespaceNewlineAndSpecialCharacterSet withString:@" "];

  return v6;
}

@end