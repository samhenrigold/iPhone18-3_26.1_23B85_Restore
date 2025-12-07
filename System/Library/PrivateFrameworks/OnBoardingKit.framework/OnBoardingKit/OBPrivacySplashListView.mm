@interface OBPrivacySplashListView
- (OBPrivacySplashListView)initWithContentList:(id)list dataDetectorTypes:(unint64_t)types displayingPrivacyPane:(BOOL)pane scrollView:(id)view;
- (id)textView:(id)view primaryActionForTextItem:(id)item defaultAction:(id)action;
- (void)_updateTextViewsForLinkUITreatment:(id)treatment;
- (void)tintColorDidChange;
- (void)traitCollectionDidChange:(id)change;
- (void)updateFonts;
- (void)updateSpacing;
- (void)updateTextAlignment;
@end

@implementation OBPrivacySplashListView

- (OBPrivacySplashListView)initWithContentList:(id)list dataDetectorTypes:(unint64_t)types displayingPrivacyPane:(BOOL)pane scrollView:(id)view
{
  paneCopy = pane;
  v78 = *MEMORY[0x1E69E9840];
  listCopy = list;
  viewCopy = view;
  v76.receiver = self;
  v76.super_class = OBPrivacySplashListView;
  v11 = *(MEMORY[0x1E695F058] + 16);
  v12 = *(MEMORY[0x1E695F058] + 24);
  v66 = *(MEMORY[0x1E695F058] + 8);
  v67 = *MEMORY[0x1E695F058];
  v13 = [(OBPrivacySplashListView *)&v76 initWithFrame:?];
  if (v13)
  {
    v14 = objc_opt_new();
    textViews = v13->_textViews;
    v13->_textViews = v14;

    v16 = objc_opt_new();
    stackedIconTextLists = v13->_stackedIconTextLists;
    v13->_stackedIconTextLists = v16;

    [(OBPrivacySplashListView *)v13 setDisplayingPrivacyPane:paneCopy];
    [(OBPrivacySplashListView *)v13 setAxis:1];
    [(OBPrivacySplashListView *)v13 setBaselineRelativeArrangement:1];
    typesCopy2 = types;
    if ([listCopy count])
    {
      v19 = 0;
      v20 = *MEMORY[0x1E69DDCE0];
      v21 = *(MEMORY[0x1E69DDCE0] + 8);
      v22 = *(MEMORY[0x1E69DDCE0] + 16);
      v23 = *(MEMORY[0x1E69DDCE0] + 24);
      v69 = *MEMORY[0x1E69DB688];
      v64 = viewCopy;
      v65 = listCopy;
      v63 = v13;
      while (1)
      {
        v24 = [listCopy objectAtIndexedSubscript:v19];
        text = [v24 text];

        if (text)
        {
          break;
        }

        bullets = [v24 bullets];

        if (bullets)
        {
          v71 = v19;
          v26 = [[OBStackedIconTextList alloc] initWithFrame:v67, v66, v11, v12];
          [(OBStackedIconTextList *)v26 setTranslatesAutoresizingMaskIntoConstraints:0];
          [(OBStackedIconTextList *)v26 setLayoutMargins:0.0, 20.0, 0.0, 20.0];
          [(OBStackedIconTextList *)v26 setLayoutMarginsRelativeArrangement:1];
          [(OBStackedIconTextList *)v26 setDataDetectorTypes:typesCopy2];
          v74 = 0u;
          v75 = 0u;
          v72 = 0u;
          v73 = 0u;
          v70 = v24;
          bullets2 = [v24 bullets];
          v38 = [bullets2 countByEnumeratingWithState:&v72 objects:v77 count:16];
          if (v38)
          {
            v39 = v38;
            v40 = *v73;
            do
            {
              for (i = 0; i != v39; ++i)
              {
                if (*v73 != v40)
                {
                  objc_enumerationMutation(bullets2);
                }

                v42 = *(*(&v72 + 1) + 8 * i);
                icon = [v42 icon];

                if (icon)
                {
                  icon2 = [v42 icon];
                  icon3 = [v42 icon];
                  [icon3 size];
                  v47 = v46;
                  v49 = v48;
                }

                else
                {
                  icon3 = [OBImage systemImageNamed:@"circle.fill"];
                  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
                  icon2 = [icon3 imageWithTintColor:secondaryLabelColor renderingMode:1];

                  v47 = 6.0;
                  v49 = 6.0;
                }

                text2 = [v42 text];
                [(OBStackedIconTextList *)v26 addEntryWithIcon:icon2 iconSize:text2 text:v47, v49];
              }

              v39 = [bullets2 countByEnumeratingWithState:&v72 objects:v77 count:16];
            }

            while (v39);
          }

          v13 = v63;
          [(OBPrivacySplashListView *)v63 addArrangedSubview:v26];
          stackedIconTextLists = [(OBPrivacySplashListView *)v63 stackedIconTextLists];
          [stackedIconTextLists addObject:v26];
          viewCopy = v64;
          listCopy = v65;
          typesCopy2 = types;
          goto LABEL_35;
        }

LABEL_36:

        if (++v19 >= [listCopy count])
        {
          goto LABEL_37;
        }
      }

      v26 = [MEMORY[0x1E69DD168] textViewUsingTextLayoutManager:1];
      [(OBStackedIconTextList *)v26 setDelegate:v13];
      if (viewCopy)
      {
        [(OBStackedIconTextList *)v26 _setEnclosingScrollView:viewCopy];
      }

      [(OBStackedIconTextList *)v26 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(OBStackedIconTextList *)v26 setTextContainerInset:v20, v21, v22, v23];
      textContainer = [(OBStackedIconTextList *)v26 textContainer];
      [textContainer setLineFragmentPadding:0.0];

      [(OBStackedIconTextList *)v26 setEditable:0];
      [(OBStackedIconTextList *)v26 setSelectable:1];
      [(OBStackedIconTextList *)v26 setScrollEnabled:0];
      [(OBStackedIconTextList *)v26 setDataDetectorTypes:typesCopy2];
      defaultParagraphStyle = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
      stackedIconTextLists = [defaultParagraphStyle mutableCopy];

      if (!+[OBFeatureFlags isNaturalUIEnabled](OBFeatureFlags, "isNaturalUIEnabled") && !+[OBViewUtilities shouldUseAccessibilityLayout])
      {
        displayingPrivacyPane = [(OBPrivacySplashListView *)v13 displayingPrivacyPane];
        if (v19)
        {
          v31 = displayingPrivacyPane;
        }

        else
        {
          v31 = 1;
        }

        [stackedIconTextLists setSpansAllLines:v31];
      }

      v71 = v19;
      v32 = objc_alloc(MEMORY[0x1E696AD40]);
      v70 = v24;
      text3 = [v24 text];
      v34 = [v32 initWithString:text3];

      [v34 addAttribute:v69 value:stackedIconTextLists range:{0, objc_msgSend(v34, "length")}];
      if (+[OBFeatureFlags isNaturalUIEnabled])
      {
        [v34 compressDoubleSpacingBy:-12.0];
      }

      [(OBStackedIconTextList *)v26 setAttributedText:v34];
      clearColor = [MEMORY[0x1E69DC888] clearColor];
      [(OBStackedIconTextList *)v26 setBackgroundColor:clearColor];

      if (+[OBFeatureFlags isNaturalUIEnabled])
      {
        [MEMORY[0x1E69DC888] secondaryLabelColor];
      }

      else
      {
        [MEMORY[0x1E69DC888] labelColor];
      }
      v52 = ;
      [(OBStackedIconTextList *)v26 setTextColor:v52];

      traitCollection = [(OBPrivacySplashListView *)v13 traitCollection];
      v54 = [traitCollection layoutDirection] == 1;

      [(OBStackedIconTextList *)v26 setTextAlignment:2 * v54];
      if (+[OBFeatureFlags isNaturalUIEnabled])
      {
        subviews = [(OBPrivacySplashListView *)v13 subviews];
        lastObject = [subviews lastObject];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(OBPrivacySplashListView *)v13 setCustomSpacing:lastObject afterView:46.0];
        }
      }

      [(OBPrivacySplashListView *)v13 addArrangedSubview:v26];
      textViews = [(OBPrivacySplashListView *)v13 textViews];
      [textViews addObject:v26];

LABEL_35:
      v24 = v70;
      v19 = v71;
      goto LABEL_36;
    }

LABEL_37:
    [(OBPrivacySplashListView *)v13 updateSpacing];
    [(OBPrivacySplashListView *)v13 updateTextAlignment];
    [(OBPrivacySplashListView *)v13 updateFonts];
    textViews2 = [(OBPrivacySplashListView *)v13 textViews];
    [(OBPrivacySplashListView *)v13 _updateTextViewsForLinkUITreatment:textViews2];

    textViews3 = [(OBPrivacySplashListView *)v13 textViews];
    lastObject2 = [textViews3 lastObject];
    footerTextView = v13->_footerTextView;
    v13->_footerTextView = lastObject2;
  }

  return v13;
}

- (void)updateSpacing
{
  v10 = [MEMORY[0x1E69DCA40] metricsForTextStyle:*MEMORY[0x1E69DDD80]];
  displayingPrivacyPane = [(OBPrivacySplashListView *)self displayingPrivacyPane];
  v4 = 46.0;
  if (!displayingPrivacyPane)
  {
    v4 = 30.0;
  }

  [v10 scaledValueForValue:v4];
  [(OBPrivacySplashListView *)self setSpacing:?];
  textViews = [(OBPrivacySplashListView *)self textViews];
  if ([textViews count])
  {
    displayingPrivacyPane2 = [(OBPrivacySplashListView *)self displayingPrivacyPane];

    if (displayingPrivacyPane2)
    {
      goto LABEL_7;
    }

    [v10 scaledValueForValue:46.0];
    v8 = v7;
    textViews = [(OBPrivacySplashListView *)self textViews];
    v9 = [textViews objectAtIndexedSubscript:0];
    [(OBPrivacySplashListView *)self setCustomSpacing:v9 afterView:v8];
  }

LABEL_7:
}

- (void)updateFonts
{
  v3 = *MEMORY[0x1E69DDCF8];
  v18 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  if (+[OBFeatureFlags isNaturalUIEnabled])
  {
    v4 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDDC0]];
    [v4 pointSize];
    v6 = v5;

    v7 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:v3];
    v8 = [MEMORY[0x1E69DB878] fontWithDescriptor:v7 size:v6];

    v18 = v8;
  }

  textViews = [(OBPrivacySplashListView *)self textViews];
  v10 = [textViews count];

  if (v10)
  {
    v11 = 0;
    v12 = *MEMORY[0x1E69DDD80];
    do
    {
      textViews2 = [(OBPrivacySplashListView *)self textViews];
      v14 = [textViews2 objectAtIndexedSubscript:v11];

      if (+[OBFeatureFlags isNaturalUIEnabled]|| !v11 || [(OBPrivacySplashListView *)self displayingPrivacyPane])
      {
        [v14 setFont:v18];
      }

      else
      {
        v17 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v12];
        [v14 setFont:v17];
      }

      ++v11;
      textViews3 = [(OBPrivacySplashListView *)self textViews];
      v16 = [textViews3 count];
    }

    while (v16 > v11);
  }
}

- (void)updateTextAlignment
{
  v18 = *MEMORY[0x1E69E9840];
  _obk_isRTL = [(UIView *)self _obk_isRTL];
  v4 = +[OBFeatureFlags isNaturalUIEnabled];
  if (_obk_isRTL)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  if (!+[OBViewUtilities shouldUseAccessibilityLayout]&& !v4)
  {
    v5 = 1;
  }

  if ([(OBPrivacySplashListView *)self displayingPrivacyPane])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    textViews = [(OBPrivacySplashListView *)self textViews];
    v7 = [textViews countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(textViews);
          }

          [*(*(&v13 + 1) + 8 * i) setTextAlignment:v5];
        }

        v8 = [textViews countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  else
  {
    textViews2 = [(OBPrivacySplashListView *)self textViews];
    firstObject = [textViews2 firstObject];
    [firstObject setTextAlignment:v5];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = OBPrivacySplashListView;
  [(OBPrivacySplashListView *)&v4 traitCollectionDidChange:change];
  [(OBPrivacySplashListView *)self updateTextAlignment];
  [(OBPrivacySplashListView *)self updateSpacing];
  [(OBPrivacySplashListView *)self updateFonts];
}

- (void)tintColorDidChange
{
  v4.receiver = self;
  v4.super_class = OBPrivacySplashListView;
  [(OBPrivacySplashListView *)&v4 tintColorDidChange];
  textViews = [(OBPrivacySplashListView *)self textViews];
  [(OBPrivacySplashListView *)self _updateTextViewsForLinkUITreatment:textViews];
}

- (void)_updateTextViewsForLinkUITreatment:(id)treatment
{
  v21 = *MEMORY[0x1E69E9840];
  treatmentCopy = treatment;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [treatmentCopy countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    v8 = *MEMORY[0x1E69DB650];
    v9 = *MEMORY[0x1E69DB758];
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(treatmentCopy);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        if ([(OBPrivacySplashListView *)self underlineLinks])
        {
          v18[0] = v8;
          tintColor = [(OBPrivacySplashListView *)self tintColor];
          v18[1] = v9;
          v19[0] = tintColor;
          v19[1] = &unk_1F2CF8510;
          v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
          [v11 setLinkTextAttributes:v13];
        }

        else
        {
          [v11 setLinkTextAttributes:0];
        }

        ++v10;
      }

      while (v6 != v10);
      v6 = [treatmentCopy countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v6);
  }
}

- (id)textView:(id)view primaryActionForTextItem:(id)item defaultAction:(id)action
{
  v20 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  actionCopy = action;
  v8 = _OBLoggingFacility(actionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B4FB6000, v8, OS_LOG_TYPE_DEFAULT, "Privacy splash textView:primaryActionForTextItem:...", buf, 2u);
  }

  link = [itemCopy link];

  if (link)
  {
    v11 = _OBLoggingFacility(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      link2 = [itemCopy link];
      *buf = 138412290;
      v19 = link2;
      _os_log_impl(&dword_1B4FB6000, v11, OS_LOG_TYPE_DEFAULT, "Privacy splash returning custom primary action for link %@", buf, 0xCu);
    }

    v13 = MEMORY[0x1E69DC628];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __75__OBPrivacySplashListView_textView_primaryActionForTextItem_defaultAction___block_invoke;
    v16[3] = &unk_1E7C155E0;
    v17 = itemCopy;
    v14 = [v13 actionWithHandler:v16];
  }

  else
  {
    v14 = actionCopy;
  }

  return v14;
}

void __75__OBPrivacySplashListView_textView_primaryActionForTextItem_defaultAction___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = _OBLoggingFacility(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) link];
    *buf = 138412290;
    v9 = v3;
    _os_log_impl(&dword_1B4FB6000, v2, OS_LOG_TYPE_DEFAULT, "Privacy splash will open %@", buf, 0xCu);
  }

  v4 = [MEMORY[0x1E69DC668] sharedApplication];
  v5 = [*(a1 + 32) link];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __75__OBPrivacySplashListView_textView_primaryActionForTextItem_defaultAction___block_invoke_20;
  v6[3] = &unk_1E7C155B8;
  v7 = *(a1 + 32);
  [v4 openURL:v5 options:MEMORY[0x1E695E0F8] completionHandler:v6];
}

void __75__OBPrivacySplashListView_textView_primaryActionForTextItem_defaultAction___block_invoke_20(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = _OBLoggingFacility(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) link];
    v6 = 138412546;
    v7 = v5;
    v8 = 1024;
    v9 = a2;
    _os_log_impl(&dword_1B4FB6000, v4, OS_LOG_TYPE_DEFAULT, "Privacy splash did open %@ with success %d", &v6, 0x12u);
  }
}

@end