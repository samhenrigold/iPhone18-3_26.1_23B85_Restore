@interface SCROBrailleUIDynamicBrailleView
- (SCROBrailleUIDynamicBrailleView)initWithIdentifier:(id)identifier initialText:(id)text;
- (id)_backButtonHandleEvent:(id)event;
- (id)_brailleForText:(id)text;
- (id)_contentHandleEvent:(id)event;
- (id)handleEvent:(id)event;
- (id)textValue;
- (id)unreadTextValue;
- (id)value;
- (id)visualRepresentation;
- (void)display;
- (void)finalizeTranscription;
- (void)handleTranscribedText:(id)text isFinal:(BOOL)final;
- (void)resetUnreadText;
- (void)setShowingBackButton:(BOOL)button;
@end

@implementation SCROBrailleUIDynamicBrailleView

- (SCROBrailleUIDynamicBrailleView)initWithIdentifier:(id)identifier initialText:(id)text
{
  textCopy = text;
  v23.receiver = self;
  v23.super_class = SCROBrailleUIDynamicBrailleView;
  v8 = [(SCROBrailleUIView *)&v23 initWithIdentifier:identifier];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_initialText, text);
    v10 = objc_opt_new();
    finalizedText = v9->_finalizedText;
    v9->_finalizedText = v10;

    updatingText = v9->_updatingText;
    v9->_updatingText = 0;

    v13 = objc_opt_new();
    finalizedUnreadText = v9->_finalizedUnreadText;
    v9->_finalizedUnreadText = v13;

    v15 = objc_opt_new();
    finalizedTextLines = v9->_finalizedTextLines;
    v9->_finalizedTextLines = v15;

    v17 = objc_opt_new();
    finalizedBrailleLines = v9->_finalizedBrailleLines;
    v9->_finalizedBrailleLines = v17;

    v19 = objc_opt_new();
    finalizedLinesLock = v9->_finalizedLinesLock;
    v9->_finalizedLinesLock = v19;

    v21 = +[SCROBrailleUISettingsManager sharedInstance];
    v9->_showsBackButton = [v21 showsBackButton];
  }

  return v9;
}

- (id)value
{
  if ([(SCROBrailleUIDynamicBrailleView *)self showsBackButton]&& [(SCROBrailleUIDynamicBrailleView *)self showingBackButton])
  {
    valueCache = [(SCROBrailleUIDynamicBrailleView *)self valueCache];
  }

  else
  {
    v4 = +[SCROBrailleUIDisplayManager sharedManager];
    v5 = [v4 lineForView:self];
    braille = [v5 braille];
    v7 = braille;
    v8 = &stru_28763D5C8;
    if (braille)
    {
      v8 = braille;
    }

    valueCache = v8;
  }

  return valueCache;
}

- (id)textValue
{
  updatingText = [(SCROBrailleUIDynamicBrailleView *)self updatingText];
  v4 = [updatingText length];

  finalizedText = [(SCROBrailleUIDynamicBrailleView *)self finalizedText];
  if (v4)
  {
    updatingText2 = [(SCROBrailleUIDynamicBrailleView *)self updatingText];
    v7 = [finalizedText stringByAppendingString:updatingText2];

    finalizedText = v7;
  }

  return finalizedText;
}

- (id)unreadTextValue
{
  updatingText = [(SCROBrailleUIDynamicBrailleView *)self updatingText];
  v4 = [updatingText length];

  finalizedUnreadText = [(SCROBrailleUIDynamicBrailleView *)self finalizedUnreadText];
  if (v4)
  {
    updatingText2 = [(SCROBrailleUIDynamicBrailleView *)self updatingText];
    v7 = [finalizedUnreadText stringByAppendingString:updatingText2];

    finalizedUnreadText = v7;
  }

  return finalizedUnreadText;
}

- (void)display
{
  v44 = *MEMORY[0x277D85DE8];
  if (![(SCROBrailleUIDynamicBrailleView *)self showsBackButton])
  {
    initialText = [(SCROBrailleUIDynamicBrailleView *)self initialText];
    v3 = [(SCROBrailleUIDynamicBrailleView *)self _brailleForText:initialText];

    v4 = [SCROBrailleUIBraille multiLineBraille:v3];
    goto LABEL_5;
  }

  if ([(SCROBrailleUIDynamicBrailleView *)self showingBackButton])
  {
    v3 = +[SCROBrailleUIUtilities brailleForBackButton];
    v4 = [SCROBrailleUIBraille lineWithBraille:v3];
LABEL_5:
    v6 = v4;

    goto LABEL_23;
  }

  v7 = objc_opt_new();
  finalizedTextLines = [(SCROBrailleUIDynamicBrailleView *)self finalizedTextLines];
  v9 = [finalizedTextLines count];
  finalizedBrailleLines = [(SCROBrailleUIDynamicBrailleView *)self finalizedBrailleLines];
  v11 = [finalizedBrailleLines count];

  if (v9 != v11)
  {
    v13 = _SCROD_LOG(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = MEMORY[0x277CCABB0];
      finalizedTextLines2 = [(SCROBrailleUIDynamicBrailleView *)self finalizedTextLines];
      v16 = [v14 numberWithUnsignedInteger:{objc_msgSend(finalizedTextLines2, "count")}];
      v17 = MEMORY[0x277CCABB0];
      finalizedBrailleLines2 = [(SCROBrailleUIDynamicBrailleView *)self finalizedBrailleLines];
      v19 = [v17 numberWithUnsignedInteger:{objc_msgSend(finalizedBrailleLines2, "count")}];
      *buf = 138412546;
      v41 = v16;
      v42 = 2112;
      v43 = v19;
      _os_log_impl(&dword_26490B000, v13, OS_LOG_TYPE_DEFAULT, "SCROBrailleDynamicBrailleView: unexpected finalized line number mismatch -- %@ != %@", buf, 0x16u);
    }
  }

  updatingText = [(SCROBrailleUIDynamicBrailleView *)self updatingText];

  if (!updatingText)
  {
    initialText2 = [(SCROBrailleUIDynamicBrailleView *)self initialText];
    v22 = [(SCROBrailleUIDynamicBrailleView *)self _brailleForText:initialText2];
    [v7 addObject:v22];
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  finalizedBrailleLines3 = [(SCROBrailleUIDynamicBrailleView *)self finalizedBrailleLines];
  v24 = [finalizedBrailleLines3 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v36;
    do
    {
      v27 = 0;
      do
      {
        if (*v36 != v26)
        {
          objc_enumerationMutation(finalizedBrailleLines3);
        }

        [v7 addObject:*(*(&v35 + 1) + 8 * v27++)];
      }

      while (v25 != v27);
      v25 = [finalizedBrailleLines3 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v25);
  }

  updatingText2 = [(SCROBrailleUIDynamicBrailleView *)self updatingText];
  if (updatingText2)
  {
    v29 = updatingText2;
    updatingBraille = [(SCROBrailleUIDynamicBrailleView *)self updatingBraille];

    if (updatingBraille)
    {
      updatingBraille2 = [(SCROBrailleUIDynamicBrailleView *)self updatingBraille];
      [v7 addObject:updatingBraille2];
    }
  }

  finalizedLinesLock = [(SCROBrailleUIDynamicBrailleView *)self finalizedLinesLock];
  [finalizedLinesLock unlock];

  v33 = [v7 componentsJoinedByString:@"\n"];
  v6 = [SCROBrailleUIBraille multiLineBraille:v33];

LABEL_23:
  v34 = +[SCROBrailleUIDisplayManager sharedManager];
  [v34 display:v6 forView:self clearAtNextDotPress:0];
}

- (id)handleEvent:(id)event
{
  eventCopy = event;
  if ([(SCROBrailleUIDynamicBrailleView *)self showsBackButton]&& [(SCROBrailleUIDynamicBrailleView *)self showingBackButton])
  {
    v5 = [(SCROBrailleUIDynamicBrailleView *)self _backButtonHandleEvent:eventCopy];
  }

  else
  {
    v5 = [(SCROBrailleUIDynamicBrailleView *)self _contentHandleEvent:eventCopy];
  }

  v6 = v5;

  return v6;
}

- (id)_backButtonHandleEvent:(id)event
{
  type = [event type];
  if (type <= 0x1A)
  {
    if (((1 << type) & 0x40002A0) != 0)
    {
      v5 = [SCROBrailleUIAction alloc];
      v6 = 2;
LABEL_4:
      v7 = [(SCROBrailleUIAction *)v5 initWithType:v6 originator:self];
      goto LABEL_14;
    }

    if (type == 4)
    {
      goto LABEL_10;
    }

    if (type == 8)
    {
      v5 = [SCROBrailleUIAction alloc];
      v6 = 3;
      goto LABEL_4;
    }
  }

  if (type == 2)
  {
    [(SCROBrailleUIDynamicBrailleView *)self setShowingBackButton:0];
    v8 = +[SCROBrailleUIDisplayManager sharedManager];
    [v8 showFirstLineForView:self];
    goto LABEL_12;
  }

  if (type == 1)
  {
LABEL_10:
    [(SCROBrailleUIDynamicBrailleView *)self setShowingBackButton:0];
    v8 = +[SCROBrailleUIDisplayManager sharedManager];
    [v8 showLastLineForView:self];
LABEL_12:
  }

  v7 = 0;
LABEL_14:

  return v7;
}

- (id)_contentHandleEvent:(id)event
{
  type = [event type];
  v5 = 0;
  if (type <= 4)
  {
    if (type > 2)
    {
      if (type != 3)
      {
        goto LABEL_14;
      }

      if (![(SCROBrailleUIDynamicBrailleView *)self showsBackButton])
      {
        v13 = +[SCROBrailleUIDisplayManager sharedManager];
        [v13 showFirstLineForView:self];
        goto LABEL_27;
      }
    }

    else if (type == 1)
    {
      if (!-[SCROBrailleUIDynamicBrailleView showsBackButton](self, "showsBackButton") || ([MEMORY[0x277CF3318] sharedModel], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "uiDisplayRange"), v16, v17))
      {
        v13 = +[SCROBrailleUIDisplayManager sharedManager];
        [v13 showPreviousLineForView:self];
        goto LABEL_27;
      }
    }

    else
    {
      if (type != 2)
      {
        goto LABEL_29;
      }

      if (!-[SCROBrailleUIDynamicBrailleView showsBackButton](self, "showsBackButton") || ([MEMORY[0x277CF3318] sharedModel], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "uiDisplayRange"), v9 = v7 + v8, objc_msgSend(MEMORY[0x277CF3318], "sharedModel"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "uiBraille"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "length"), v11, v10, v6, v9 < v12))
      {
        v13 = +[SCROBrailleUIDisplayManager sharedManager];
        [v13 showNextLineForView:self];
LABEL_27:

        goto LABEL_28;
      }
    }

    [(SCROBrailleUIDynamicBrailleView *)self setShowingBackButton:1];
LABEL_28:
    v5 = 0;
    goto LABEL_29;
  }

  if (type <= 6)
  {
    if (type == 5)
    {
      v14 = [SCROBrailleUIAction alloc];
      v15 = 1;
    }

    else
    {
      v14 = [SCROBrailleUIAction alloc];
      v15 = 4;
    }

    goto LABEL_25;
  }

  switch(type)
  {
    case 7:
      v14 = [SCROBrailleUIAction alloc];
      v15 = 2;
LABEL_25:
      v5 = [(SCROBrailleUIAction *)v14 initWithType:v15 originator:self];
      break;
    case 8:
      v14 = [SCROBrailleUIAction alloc];
      v15 = 3;
      goto LABEL_25;
    case 9:
LABEL_14:
      v13 = +[SCROBrailleUIDisplayManager sharedManager];
      [v13 showLastLineForView:self];
      goto LABEL_27;
  }

LABEL_29:

  return v5;
}

- (id)_brailleForText:(id)text
{
  textCopy = text;
  v4 = +[SCROBrailleTranslationManager sharedManager];
  v5 = [v4 printBrailleForText:textCopy language:0 mode:1 textPositionsRange:0x7FFFFFFFFFFFFFFFLL locations:0 textFormattingRanges:{0, 0}];

  return v5;
}

- (void)handleTranscribedText:(id)text isFinal:(BOOL)final
{
  finalCopy = final;
  textCopy = text;
  v6 = +[SCROBrailleUIView visibleView];
  if (v6 != self)
  {
LABEL_9:

    goto LABEL_10;
  }

  if (![(SCROBrailleUIDynamicBrailleView *)self showsBackButton])
  {

    goto LABEL_6;
  }

  showingBackButton = [(SCROBrailleUIDynamicBrailleView *)self showingBackButton];

  if (!showingBackButton)
  {
LABEL_6:
    finalizedLinesLock = [(SCROBrailleUIDynamicBrailleView *)self finalizedLinesLock];
    [finalizedLinesLock lock];

    v6 = [(SCROBrailleUIDynamicBrailleView *)self _brailleForText:textCopy];
    mEMORY[0x277CF3318] = [MEMORY[0x277CF3318] sharedModel];
    [mEMORY[0x277CF3318] uiReplaceLastLineWith:v6];

    [(SCROBrailleUIDynamicBrailleView *)self setUpdatingText:textCopy];
    [(SCROBrailleUIDynamicBrailleView *)self setUpdatingBraille:v6];
    if (finalCopy)
    {
      [(SCROBrailleUIDynamicBrailleView *)self finalizeTranscription];
    }

    finalizedLinesLock2 = [(SCROBrailleUIDynamicBrailleView *)self finalizedLinesLock];
    [finalizedLinesLock2 unlock];

    goto LABEL_9;
  }

LABEL_10:
}

- (void)finalizeTranscription
{
  v3 = +[SCROBrailleUIView visibleView];
  if (v3 == self)
  {
    v16 = v3;
    if ([(SCROBrailleUIDynamicBrailleView *)self showsBackButton])
    {
      showingBackButton = [(SCROBrailleUIDynamicBrailleView *)self showingBackButton];

      if (showingBackButton)
      {
        return;
      }
    }

    else
    {
    }

    updatingText = [(SCROBrailleUIDynamicBrailleView *)self updatingText];

    if (!updatingText)
    {
      return;
    }

    mEMORY[0x277CF3318] = [MEMORY[0x277CF3318] sharedModel];
    [mEMORY[0x277CF3318] uiAppendNewLine];

    finalizedText = [(SCROBrailleUIDynamicBrailleView *)self finalizedText];
    updatingText2 = [(SCROBrailleUIDynamicBrailleView *)self updatingText];
    [finalizedText appendFormat:@"\n%@", updatingText2];

    finalizedUnreadText = [(SCROBrailleUIDynamicBrailleView *)self finalizedUnreadText];
    updatingText3 = [(SCROBrailleUIDynamicBrailleView *)self updatingText];
    [finalizedUnreadText appendFormat:@"\n%@", updatingText3];

    finalizedTextLines = [(SCROBrailleUIDynamicBrailleView *)self finalizedTextLines];
    updatingText4 = [(SCROBrailleUIDynamicBrailleView *)self updatingText];
    [finalizedTextLines addObject:updatingText4];

    finalizedBrailleLines = [(SCROBrailleUIDynamicBrailleView *)self finalizedBrailleLines];
    updatingBraille = [(SCROBrailleUIDynamicBrailleView *)self updatingBraille];
    [finalizedBrailleLines addObject:updatingBraille];

    v15 = objc_opt_new();
    [(SCROBrailleUIDynamicBrailleView *)self setUpdatingText:v15];

    v17 = objc_opt_new();
    [(SCROBrailleUIDynamicBrailleView *)self setUpdatingBraille:v17];
    v3 = v17;
  }
}

- (id)visualRepresentation
{
  v58[1] = *MEMORY[0x277D85DE8];
  if ([(SCROBrailleUIDynamicBrailleView *)self showsBackButton]&& [(SCROBrailleUIDynamicBrailleView *)self showingBackButton])
  {
    v3 = SCROBrailleUILocString(@"back.btn.label");
    mEMORY[0x277CF3318] = +[SCROBrailleUIUtilities brailleForBackButton];
    v5 = [[SCROBrailleUICaptionableBrailleLine alloc] initWithBraille:mEMORY[0x277CF3318] selection:0x7FFFFFFFFFFFFFFFLL, 0];
    [(SCROBrailleUICaptionableBrailleLine *)v5 setManualCaption:v3];
    v6 = [SCROBrailleUIVisualRepresentation alloc];
    v58[0] = v5;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:1];
    v8 = [(SCROBrailleUIVisualRepresentation *)v6 initWithLines:v7 focusedIndex:0 isList:0];
  }

  else
  {
    finalizedLinesLock = [(SCROBrailleUIDynamicBrailleView *)self finalizedLinesLock];
    [finalizedLinesLock lock];

    v3 = objc_opt_new();
    finalizedTextLines = [(SCROBrailleUIDynamicBrailleView *)self finalizedTextLines];
    v11 = [finalizedTextLines count];
    finalizedBrailleLines = [(SCROBrailleUIDynamicBrailleView *)self finalizedBrailleLines];
    v13 = [finalizedBrailleLines count];

    if (v11 != v13)
    {
      v15 = _SCROD_LOG(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = MEMORY[0x277CCABB0];
        finalizedTextLines2 = [(SCROBrailleUIDynamicBrailleView *)self finalizedTextLines];
        v18 = [v16 numberWithUnsignedInteger:{objc_msgSend(finalizedTextLines2, "count")}];
        v19 = MEMORY[0x277CCABB0];
        finalizedBrailleLines2 = [(SCROBrailleUIDynamicBrailleView *)self finalizedBrailleLines];
        v21 = [v19 numberWithUnsignedInteger:{objc_msgSend(finalizedBrailleLines2, "count")}];
        *buf = 138412546;
        v55 = v18;
        v56 = 2112;
        v57 = v21;
        _os_log_impl(&dword_26490B000, v15, OS_LOG_TYPE_DEFAULT, "SCROBrailleDynamicBrailleView: unexpected finalized line number mismatch -- %@ != %@", buf, 0x16u);
      }
    }

    updatingText = [(SCROBrailleUIDynamicBrailleView *)self updatingText];

    if (!updatingText)
    {
      v23 = [SCROBrailleUICaptionableBrailleLine alloc];
      initialText = [(SCROBrailleUIDynamicBrailleView *)self initialText];
      v25 = [(SCROBrailleUIDynamicBrailleView *)self _brailleForText:initialText];
      v26 = [(SCROBrailleUICaptionableBrailleLine *)v23 initWithBraille:v25 selection:0x7FFFFFFFFFFFFFFFLL, 0];

      initialText2 = [(SCROBrailleUIDynamicBrailleView *)self initialText];
      [(SCROBrailleUICaptionableBrailleLine *)v26 setManualCaption:initialText2];

      [v3 addObject:v26];
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    finalizedBrailleLines3 = [(SCROBrailleUIDynamicBrailleView *)self finalizedBrailleLines];
    v29 = [finalizedBrailleLines3 countByEnumeratingWithState:&v49 objects:v53 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = 0;
      v32 = *v50;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v50 != v32)
          {
            objc_enumerationMutation(finalizedBrailleLines3);
          }

          v34 = [[SCROBrailleUICaptionableBrailleLine alloc] initWithBraille:*(*(&v49 + 1) + 8 * i) selection:0x7FFFFFFFFFFFFFFFLL, 0];
          finalizedTextLines3 = [(SCROBrailleUIDynamicBrailleView *)self finalizedTextLines];
          v36 = [finalizedTextLines3 count];

          if (v31 < v36)
          {
            finalizedTextLines4 = [(SCROBrailleUIDynamicBrailleView *)self finalizedTextLines];
            v38 = [finalizedTextLines4 objectAtIndexedSubscript:v31];
            [(SCROBrailleUICaptionableBrailleLine *)v34 setManualCaption:v38];
          }

          [v3 addObject:v34];
          ++v31;
        }

        v30 = [finalizedBrailleLines3 countByEnumeratingWithState:&v49 objects:v53 count:16];
      }

      while (v30);
    }

    updatingText2 = [(SCROBrailleUIDynamicBrailleView *)self updatingText];
    if (updatingText2)
    {
      v40 = updatingText2;
      updatingBraille = [(SCROBrailleUIDynamicBrailleView *)self updatingBraille];

      if (updatingBraille)
      {
        v42 = [SCROBrailleUICaptionableBrailleLine alloc];
        updatingBraille2 = [(SCROBrailleUIDynamicBrailleView *)self updatingBraille];
        v44 = [(SCROBrailleUICaptionableBrailleLine *)v42 initWithBraille:updatingBraille2 selection:0x7FFFFFFFFFFFFFFFLL, 0];

        updatingText3 = [(SCROBrailleUIDynamicBrailleView *)self updatingText];
        [(SCROBrailleUICaptionableBrailleLine *)v44 setManualCaption:updatingText3];

        [v3 addObject:v44];
      }
    }

    finalizedLinesLock2 = [(SCROBrailleUIDynamicBrailleView *)self finalizedLinesLock];
    [finalizedLinesLock2 unlock];

    v47 = [SCROBrailleUIVisualRepresentation alloc];
    mEMORY[0x277CF3318] = [MEMORY[0x277CF3318] sharedModel];
    v8 = -[SCROBrailleUIVisualRepresentation initWithLines:focusedIndex:isList:](v47, "initWithLines:focusedIndex:isList:", v3, [mEMORY[0x277CF3318] uiFocusedLineIndex], 0);
  }

  return v8;
}

- (void)resetUnreadText
{
  v3 = objc_opt_new();
  [(SCROBrailleUIDynamicBrailleView *)self setFinalizedUnreadText:v3];
}

- (void)setShowingBackButton:(BOOL)button
{
  buttonCopy = button;
  if ([(SCROBrailleUIDynamicBrailleView *)self showsBackButton]&& self->_showingBackButton != buttonCopy)
  {
    if (buttonCopy)
    {
      value = [(SCROBrailleUIDynamicBrailleView *)self value];
      [(SCROBrailleUIDynamicBrailleView *)self setValueCache:value];
    }

    else
    {
      [(SCROBrailleUIDynamicBrailleView *)self setValueCache:0];
    }

    self->_showingBackButton = buttonCopy;

    [(SCROBrailleUIDynamicBrailleView *)self display];
  }
}

@end