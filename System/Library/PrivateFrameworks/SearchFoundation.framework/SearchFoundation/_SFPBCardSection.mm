@interface _SFPBCardSection
- (BOOL)getRacFeedbackLoggingContent:(id *)content forKey:(id)key;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBCardSection)initWithDictionary:(id)dictionary;
- (_SFPBCardSection)initWithFacade:(id)facade;
- (_SFPBCardSection)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addCommands:(id)commands;
- (void)addCopyableItems:(id)items;
- (void)addLeadingSwipeButtonItems:(id)items;
- (void)addParameterKeyPaths:(id)paths;
- (void)addPreviewButtonItems:(id)items;
- (void)addPunchoutOptions:(id)options;
- (void)addReferencedCommands:(id)commands;
- (void)addTrailingSwipeButtonItems:(id)items;
- (void)setApplicationBundleIdentifier:(id)identifier;
- (void)setCardSectionDetail:(id)detail;
- (void)setCardSectionId:(id)id;
- (void)setCommands:(id)commands;
- (void)setCopyableItems:(id)items;
- (void)setEmphasisSubjectId:(id)id;
- (void)setLeadingSwipeButtonItems:(id)items;
- (void)setParameterKeyPaths:(id)paths;
- (void)setPreviewButtonItems:(id)items;
- (void)setPreviewButtonItemsTitle:(id)title;
- (void)setPunchoutOptions:(id)options;
- (void)setPunchoutPickerDismissText:(id)text;
- (void)setPunchoutPickerTitle:(id)title;
- (void)setRacFeedbackLoggingContent:(id)content;
- (void)setRacFeedbackLoggingContent:(id)content forKey:(id)key;
- (void)setRacFeedbackSubfeatureId:(id)id;
- (void)setReferencedCommands:(id)commands;
- (void)setResultIdentifier:(id)identifier;
- (void)setTrailingSwipeButtonItems:(id)items;
- (void)writeTo:(id)to;
@end

@implementation _SFPBCardSection

- (_SFPBCardSection)initWithFacade:(id)facade
{
  v401 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v391.receiver = self;
  v391.super_class = _SFPBCardSection;
  v5 = [(_SFPBCardSection *)&v391 init];

  if (v5)
  {
    nextCard = [facadeCopy nextCard];

    if (nextCard)
    {
      v7 = [_SFPBCard alloc];
      nextCard2 = [facadeCopy nextCard];
      v9 = [(_SFPBCard *)v7 initWithFacade:nextCard2];
      [(_SFPBCardSection *)v5 setNextCard:v9];
    }

    commands = [facadeCopy commands];
    if (commands)
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v11 = 0;
    }

    v389 = 0u;
    v390 = 0u;
    v387 = 0u;
    v388 = 0u;
    v350 = facadeCopy;
    commands2 = [facadeCopy commands];
    v13 = [commands2 countByEnumeratingWithState:&v387 objects:v400 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v388;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v388 != v15)
          {
            objc_enumerationMutation(commands2);
          }

          v17 = [[_SFPBAbstractCommand alloc] initWithFacade:*(*(&v387 + 1) + 8 * i)];
          if (v17)
          {
            [v11 addObject:v17];
          }
        }

        v14 = [commands2 countByEnumeratingWithState:&v387 objects:v400 count:16];
      }

      while (v14);
    }

    [(_SFPBCardSection *)v5 setCommands:v11];
    parameterKeyPaths = [v350 parameterKeyPaths];
    if (parameterKeyPaths)
    {
      v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v19 = 0;
    }

    v385 = 0u;
    v386 = 0u;
    v383 = 0u;
    v384 = 0u;
    parameterKeyPaths2 = [v350 parameterKeyPaths];
    v21 = [parameterKeyPaths2 countByEnumeratingWithState:&v383 objects:v399 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v384;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v384 != v23)
          {
            objc_enumerationMutation(parameterKeyPaths2);
          }

          v25 = *(*(&v383 + 1) + 8 * j);
          if (v25)
          {
            [v19 addObject:v25];
          }
        }

        v22 = [parameterKeyPaths2 countByEnumeratingWithState:&v383 objects:v399 count:16];
      }

      while (v22);
    }

    [(_SFPBCardSection *)v5 setParameterKeyPaths:v19];
    cardSectionId = [v350 cardSectionId];

    if (cardSectionId)
    {
      cardSectionId2 = [v350 cardSectionId];
      [(_SFPBCardSection *)v5 setCardSectionId:cardSectionId2];
    }

    resultIdentifier = [v350 resultIdentifier];

    if (resultIdentifier)
    {
      resultIdentifier2 = [v350 resultIdentifier];
      [(_SFPBCardSection *)v5 setResultIdentifier:resultIdentifier2];
    }

    userReportRequest = [v350 userReportRequest];

    if (userReportRequest)
    {
      v31 = [_SFPBUserReportRequest alloc];
      userReportRequest2 = [v350 userReportRequest];
      v33 = [(_SFPBUserReportRequest *)v31 initWithFacade:userReportRequest2];
      [(_SFPBCardSection *)v5 setUserReportRequest:v33];
    }

    command = [v350 command];

    if (command)
    {
      v35 = [_SFPBCommand alloc];
      command2 = [v350 command];
      v37 = [(_SFPBCommand *)v35 initWithFacade:command2];
      [(_SFPBCardSection *)v5 setCommand:v37];
    }

    previewCommand = [v350 previewCommand];

    if (previewCommand)
    {
      v39 = [_SFPBCommand alloc];
      previewCommand2 = [v350 previewCommand];
      v41 = [(_SFPBCommand *)v39 initWithFacade:previewCommand2];
      [(_SFPBCardSection *)v5 setPreviewCommand:v41];
    }

    previewButtonItems = [v350 previewButtonItems];
    v349 = v5;
    if (previewButtonItems)
    {
      v354 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v354 = 0;
    }

    v381 = 0u;
    v382 = 0u;
    v379 = 0u;
    v380 = 0u;
    previewButtonItems2 = [v350 previewButtonItems];
    v44 = [previewButtonItems2 countByEnumeratingWithState:&v379 objects:v398 count:16];
    if (v44)
    {
      v45 = v44;
      v46 = *v380;
      do
      {
        for (k = 0; k != v45; ++k)
        {
          if (*v380 != v46)
          {
            objc_enumerationMutation(previewButtonItems2);
          }

          v48 = [[_SFPBButtonItem alloc] initWithFacade:*(*(&v379 + 1) + 8 * k)];
          if (v48)
          {
            [v354 addObject:v48];
          }
        }

        v45 = [previewButtonItems2 countByEnumeratingWithState:&v379 objects:v398 count:16];
      }

      while (v45);
    }

    [(_SFPBCardSection *)v5 setPreviewButtonItems:v354];
    cardSectionDetail = [v350 cardSectionDetail];

    if (cardSectionDetail)
    {
      cardSectionDetail2 = [v350 cardSectionDetail];
      [(_SFPBCardSection *)v5 setCardSectionDetail:cardSectionDetail2];
    }

    previewButtonItemsTitle = [v350 previewButtonItemsTitle];

    if (previewButtonItemsTitle)
    {
      previewButtonItemsTitle2 = [v350 previewButtonItemsTitle];
      [(_SFPBCardSection *)v5 setPreviewButtonItemsTitle:previewButtonItemsTitle2];
    }

    backgroundColor = [v350 backgroundColor];

    if (backgroundColor)
    {
      v54 = [_SFPBColor alloc];
      backgroundColor2 = [v350 backgroundColor];
      v56 = [(_SFPBColor *)v54 initWithFacade:backgroundColor2];
      [(_SFPBCardSection *)v5 setBackgroundColor:v56];
    }

    -[_SFPBCardSection setShouldHideInAmbientMode:](v5, "setShouldHideInAmbientMode:", [v350 shouldHideInAmbientMode]);
    leadingSwipeButtonItems = [v350 leadingSwipeButtonItems];
    if (leadingSwipeButtonItems)
    {
      v353 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v353 = 0;
    }

    v377 = 0u;
    v378 = 0u;
    v375 = 0u;
    v376 = 0u;
    leadingSwipeButtonItems2 = [v350 leadingSwipeButtonItems];
    v59 = [leadingSwipeButtonItems2 countByEnumeratingWithState:&v375 objects:v397 count:16];
    if (v59)
    {
      v60 = v59;
      v61 = *v376;
      do
      {
        for (m = 0; m != v60; ++m)
        {
          if (*v376 != v61)
          {
            objc_enumerationMutation(leadingSwipeButtonItems2);
          }

          v63 = [[_SFPBButtonItem alloc] initWithFacade:*(*(&v375 + 1) + 8 * m)];
          if (v63)
          {
            [v353 addObject:v63];
          }
        }

        v60 = [leadingSwipeButtonItems2 countByEnumeratingWithState:&v375 objects:v397 count:16];
      }

      while (v60);
    }

    [(_SFPBCardSection *)v5 setLeadingSwipeButtonItems:v353];
    trailingSwipeButtonItems = [v350 trailingSwipeButtonItems];
    if (trailingSwipeButtonItems)
    {
      v352 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v352 = 0;
    }

    v373 = 0u;
    v374 = 0u;
    v371 = 0u;
    v372 = 0u;
    trailingSwipeButtonItems2 = [v350 trailingSwipeButtonItems];
    v66 = [trailingSwipeButtonItems2 countByEnumeratingWithState:&v371 objects:v396 count:16];
    if (v66)
    {
      v67 = v66;
      v68 = *v372;
      do
      {
        for (n = 0; n != v67; ++n)
        {
          if (*v372 != v68)
          {
            objc_enumerationMutation(trailingSwipeButtonItems2);
          }

          v70 = [[_SFPBButtonItem alloc] initWithFacade:*(*(&v371 + 1) + 8 * n)];
          if (v70)
          {
            [v352 addObject:v70];
          }
        }

        v67 = [trailingSwipeButtonItems2 countByEnumeratingWithState:&v371 objects:v396 count:16];
      }

      while (v67);
    }

    [(_SFPBCardSection *)v5 setTrailingSwipeButtonItems:v352];
    punchoutOptions = [v350 punchoutOptions];
    v348 = v11;
    if (punchoutOptions)
    {
      v351 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v351 = 0;
    }

    v369 = 0u;
    v370 = 0u;
    v367 = 0u;
    v368 = 0u;
    punchoutOptions2 = [v350 punchoutOptions];
    v73 = [punchoutOptions2 countByEnumeratingWithState:&v367 objects:v395 count:16];
    if (v73)
    {
      v74 = v73;
      v75 = *v368;
      do
      {
        for (ii = 0; ii != v74; ++ii)
        {
          if (*v368 != v75)
          {
            objc_enumerationMutation(punchoutOptions2);
          }

          v77 = [[_SFPBPunchout alloc] initWithFacade:*(*(&v367 + 1) + 8 * ii)];
          if (v77)
          {
            [v351 addObject:v77];
          }
        }

        v74 = [punchoutOptions2 countByEnumeratingWithState:&v367 objects:v395 count:16];
      }

      while (v74);
    }

    [(_SFPBCardSection *)v5 setPunchoutOptions:v351];
    punchoutPickerTitle = [v350 punchoutPickerTitle];

    if (punchoutPickerTitle)
    {
      punchoutPickerTitle2 = [v350 punchoutPickerTitle];
      [(_SFPBCardSection *)v5 setPunchoutPickerTitle:punchoutPickerTitle2];
    }

    punchoutPickerDismissText = [v350 punchoutPickerDismissText];

    if (punchoutPickerDismissText)
    {
      punchoutPickerDismissText2 = [v350 punchoutPickerDismissText];
      [(_SFPBCardSection *)v5 setPunchoutPickerDismissText:punchoutPickerDismissText2];
    }

    -[_SFPBCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v350 canBeHidden]);
    -[_SFPBCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v350 hasTopPadding]);
    -[_SFPBCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v350 hasBottomPadding]);
    -[_SFPBCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v350 separatorStyle]);
    referencedCommands = [v350 referencedCommands];
    if (referencedCommands)
    {
      v83 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v83 = 0;
    }

    v365 = 0u;
    v366 = 0u;
    v363 = 0u;
    v364 = 0u;
    referencedCommands2 = [v350 referencedCommands];
    v85 = [referencedCommands2 countByEnumeratingWithState:&v363 objects:v394 count:16];
    if (v85)
    {
      v86 = v85;
      v87 = *v364;
      do
      {
        for (jj = 0; jj != v86; ++jj)
        {
          if (*v364 != v87)
          {
            objc_enumerationMutation(referencedCommands2);
          }

          v89 = [[_SFPBCommand alloc] initWithFacade:*(*(&v363 + 1) + 8 * jj)];
          if (v89)
          {
            [v83 addObject:v89];
          }
        }

        v86 = [referencedCommands2 countByEnumeratingWithState:&v363 objects:v394 count:16];
      }

      while (v86);
    }

    [(_SFPBCardSection *)v5 setReferencedCommands:v83];
    -[_SFPBCardSection setForceEnable3DTouch:](v5, "setForceEnable3DTouch:", [v350 forceEnable3DTouch]);
    -[_SFPBCardSection setShouldShowInSmartDialog:](v5, "setShouldShowInSmartDialog:", [v350 shouldShowInSmartDialog]);
    appEntityAnnotation = [v350 appEntityAnnotation];

    if (appEntityAnnotation)
    {
      v91 = [_SFPBAppEntityAnnotation alloc];
      appEntityAnnotation2 = [v350 appEntityAnnotation];
      v93 = [(_SFPBAppEntityAnnotation *)v91 initWithFacade:appEntityAnnotation2];
      [(_SFPBCardSection *)v5 setAppEntityAnnotation:v93];
    }

    emphasisSubjectId = [v350 emphasisSubjectId];

    if (emphasisSubjectId)
    {
      emphasisSubjectId2 = [v350 emphasisSubjectId];
      [(_SFPBCardSection *)v5 setEmphasisSubjectId:emphasisSubjectId2];
    }

    -[_SFPBCardSection setIncreasedContrastMode:](v5, "setIncreasedContrastMode:", [v350 increasedContrastMode]);
    secondaryCommand = [v350 secondaryCommand];

    if (secondaryCommand)
    {
      v97 = [_SFPBCommand alloc];
      secondaryCommand2 = [v350 secondaryCommand];
      v99 = [(_SFPBCommand *)v97 initWithFacade:secondaryCommand2];
      [(_SFPBCardSection *)v5 setSecondaryCommand:v99];
    }

    -[_SFPBCardSection setRequiredLevelOfDetail:](v5, "setRequiredLevelOfDetail:", [v350 requiredLevelOfDetail]);
    racFeedbackSubfeatureId = [v350 racFeedbackSubfeatureId];

    if (racFeedbackSubfeatureId)
    {
      racFeedbackSubfeatureId2 = [v350 racFeedbackSubfeatureId];
      [(_SFPBCardSection *)v5 setRacFeedbackSubfeatureId:racFeedbackSubfeatureId2];
    }

    racFeedbackLoggingContent = [v350 racFeedbackLoggingContent];
    v103 = racFeedbackLoggingContent;
    if (racFeedbackLoggingContent)
    {
      v104 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(racFeedbackLoggingContent, "count")}];
    }

    else
    {
      v104 = 0;
    }

    v361 = 0u;
    v362 = 0u;
    v359 = 0u;
    v360 = 0u;
    v105 = v103;
    v106 = [v105 countByEnumeratingWithState:&v359 objects:v393 count:16];
    if (v106)
    {
      v107 = v106;
      v108 = *v360;
      do
      {
        for (kk = 0; kk != v107; ++kk)
        {
          if (*v360 != v108)
          {
            objc_enumerationMutation(v105);
          }

          v110 = *(*(&v359 + 1) + 8 * kk);
          v111 = [v105 objectForKey:v110];
          if (v111)
          {
            [v104 setObject:v111 forKey:v110];
          }
        }

        v107 = [v105 countByEnumeratingWithState:&v359 objects:v393 count:16];
      }

      while (v107);
    }

    [(_SFPBCardSection *)v5 setRacFeedbackLoggingContent:v104];
    copyableItems = [v350 copyableItems];
    if (copyableItems)
    {
      v113 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v113 = 0;
    }

    v357 = 0u;
    v358 = 0u;
    v355 = 0u;
    v356 = 0u;
    copyableItems2 = [v350 copyableItems];
    v115 = [copyableItems2 countByEnumeratingWithState:&v355 objects:v392 count:16];
    if (v115)
    {
      v116 = v115;
      v117 = *v356;
      do
      {
        for (mm = 0; mm != v116; ++mm)
        {
          if (*v356 != v117)
          {
            objc_enumerationMutation(copyableItems2);
          }

          v119 = [[_SFPBCopyItem alloc] initWithFacade:*(*(&v355 + 1) + 8 * mm)];
          if (v119)
          {
            [v113 addObject:v119];
          }
        }

        v116 = [copyableItems2 countByEnumeratingWithState:&v355 objects:v392 count:16];
      }

      while (v116);
    }

    v5 = v349;
    [(_SFPBCardSection *)v349 setCopyableItems:v113];
    facadeCopy = v350;
    applicationBundleIdentifier = [v350 applicationBundleIdentifier];

    if (applicationBundleIdentifier)
    {
      applicationBundleIdentifier2 = [v350 applicationBundleIdentifier];
      [(_SFPBCardSection *)v349 setApplicationBundleIdentifier:applicationBundleIdentifier2];
    }

    v122 = objc_alloc_init(_SFPBCardSectionValue);
    [(_SFPBCardSection *)v349 setValue:v122];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:1];
      v123 = [[_SFPBAppLinkCardSection alloc] initWithFacade:v350];
      value = [(_SFPBCardSection *)v349 value];
      [value setAppLinkCardSection:v123];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:2];
      v125 = [[_SFPBDescriptionCardSection alloc] initWithFacade:v350];
      value2 = [(_SFPBCardSection *)v349 value];
      [value2 setDescriptionCardSection:v125];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:3];
      v127 = [[_SFPBKeyValueDataCardSection alloc] initWithFacade:v350];
      value3 = [(_SFPBCardSection *)v349 value];
      [value3 setKeyValueDataCardSection:v127];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:4];
      v129 = [[_SFPBMapCardSection alloc] initWithFacade:v350];
      value4 = [(_SFPBCardSection *)v349 value];
      [value4 setMapCardSection:v129];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:5];
      v131 = [[_SFPBMediaInfoCardSection alloc] initWithFacade:v350];
      value5 = [(_SFPBCardSection *)v349 value];
      [value5 setMediaInfoCardSection:v131];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:6];
      v133 = [[_SFPBMediaPlayerCardSection alloc] initWithFacade:v350];
      value6 = [(_SFPBCardSection *)v349 value];
      [value6 setMediaPlayerCardSection:v133];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:7];
      v135 = [[_SFPBNowPlayingCardSection alloc] initWithFacade:v350];
      value7 = [(_SFPBCardSection *)v349 value];
      [value7 setNowPlayingCardSection:v135];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:8];
      v137 = [[_SFPBRichTitleCardSection alloc] initWithFacade:v350];
      value8 = [(_SFPBCardSection *)v349 value];
      [value8 setRichTitleCardSection:v137];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:9];
      v139 = [[_SFPBRowCardSection alloc] initWithFacade:v350];
      value9 = [(_SFPBCardSection *)v349 value];
      [value9 setRowCardSection:v139];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:10];
      v141 = [[_SFPBScoreboardCardSection alloc] initWithFacade:v350];
      value10 = [(_SFPBCardSection *)v349 value];
      [value10 setScoreboardCardSection:v141];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:11];
      v143 = [[_SFPBSocialMediaPostCardSection alloc] initWithFacade:v350];
      value11 = [(_SFPBCardSection *)v349 value];
      [value11 setSocialMediaPostCardSection:v143];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:12];
      v145 = [[_SFPBStockChartCardSection alloc] initWithFacade:v350];
      value12 = [(_SFPBCardSection *)v349 value];
      [value12 setStockChartCardSection:v145];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:13];
      v147 = [[_SFPBTableHeaderRowCardSection alloc] initWithFacade:v350];
      value13 = [(_SFPBCardSection *)v349 value];
      [value13 setTableHeaderRowCardSection:v147];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [(_SFPBCardSection *)v349 setType:14];
        v149 = [[_SFPBTableRowCardSection alloc] initWithFacade:v350];
        value14 = [(_SFPBCardSection *)v349 value];
        [value14 setTableRowCardSection:v149];
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:15];
      v151 = [[_SFPBTextColumnsCardSection alloc] initWithFacade:v350];
      value15 = [(_SFPBCardSection *)v349 value];
      [value15 setTextColumnsCardSection:v151];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  [(_SFPBCardSection *)v349 setType:16];
                  v153 = [[_SFPBTitleCardSection alloc] initWithFacade:v350];
                  value16 = [(_SFPBCardSection *)v349 value];
                  [value16 setTitleCardSection:v153];
                }
              }
            }
          }
        }
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:17];
      v155 = [[_SFPBTrackListCardSection alloc] initWithFacade:v350];
      value17 = [(_SFPBCardSection *)v349 value];
      [value17 setTrackListCardSection:v155];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:18];
      v157 = [[_SFPBAudioPlaybackCardSection alloc] initWithFacade:v350];
      value18 = [(_SFPBCardSection *)v349 value];
      [value18 setAudioPlaybackCardSection:v157];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:19];
      v159 = [[_SFPBFlightCardSection alloc] initWithFacade:v350];
      value19 = [(_SFPBCardSection *)v349 value];
      [value19 setFlightCardSection:v159];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:20];
      v161 = [[_SFPBActivityIndicatorCardSection alloc] initWithFacade:v350];
      value20 = [(_SFPBCardSection *)v349 value];
      [value20 setActivityIndicatorCardSection:v161];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:21];
      v163 = [[_SFPBWebCardSection alloc] initWithFacade:v350];
      value21 = [(_SFPBCardSection *)v349 value];
      [value21 setWebCardSection:v163];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:22];
      v165 = [[_SFPBMessageCardSection alloc] initWithFacade:v350];
      value22 = [(_SFPBCardSection *)v349 value];
      [value22 setMessageCardSection:v165];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:23];
      v167 = [[_SFPBDetailedRowCardSection alloc] initWithFacade:v350];
      value23 = [(_SFPBCardSection *)v349 value];
      [value23 setDetailedRowCardSection:v167];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:24];
      v169 = [[_SFPBImagesCardSection alloc] initWithFacade:v350];
      value24 = [(_SFPBCardSection *)v349 value];
      [value24 setImagesCardSection:v169];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:25];
      v171 = [[_SFPBSuggestionCardSection alloc] initWithFacade:v350];
      value25 = [(_SFPBCardSection *)v349 value];
      [value25 setSuggestionCardSection:v171];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:26];
      v173 = [[_SFPBSelectableGridCardSection alloc] initWithFacade:v350];
      value26 = [(_SFPBCardSection *)v349 value];
      [value26 setSelectableGridCardSection:v173];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:27];
      v175 = [[_SFPBSectionHeaderCardSection alloc] initWithFacade:v350];
      value27 = [(_SFPBCardSection *)v349 value];
      [value27 setSectionHeaderCardSection:v175];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:28];
      v177 = [[_SFPBMetaInfoCardSection alloc] initWithFacade:v350];
      value28 = [(_SFPBCardSection *)v349 value];
      [value28 setMetaInfoCardSection:v177];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:29];
      v179 = [[_SFPBWatchListCardSection alloc] initWithFacade:v350];
      value29 = [(_SFPBCardSection *)v349 value];
      [value29 setWatchListCardSection:v179];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:30];
      v181 = [[_SFPBMapsDetailedRowCardSection alloc] initWithFacade:v350];
      value30 = [(_SFPBCardSection *)v349 value];
      [value30 setMapsDetailedRowCardSection:v181];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:31];
      v183 = [[_SFPBButtonCardSection alloc] initWithFacade:v350];
      value31 = [(_SFPBCardSection *)v349 value];
      [value31 setButtonCardSection:v183];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:32];
      v185 = [[_SFPBHorizontalButtonCardSection alloc] initWithFacade:v350];
      value32 = [(_SFPBCardSection *)v349 value];
      [value32 setHorizontalButtonCardSection:v185];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:33];
      v187 = [[_SFPBVerticalLayoutCardSection alloc] initWithFacade:v350];
      value33 = [(_SFPBCardSection *)v349 value];
      [value33 setVerticalLayoutCardSection:v187];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:34];
      v189 = [[_SFPBProductCardSection alloc] initWithFacade:v350];
      value34 = [(_SFPBCardSection *)v349 value];
      [value34 setProductCardSection:v189];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:35];
      v191 = [[_SFPBHorizontalScrollCardSection alloc] initWithFacade:v350];
      value35 = [(_SFPBCardSection *)v349 value];
      [value35 setHorizontalScrollCardSection:v191];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:36];
      v193 = [[_SFPBMediaRemoteControlCardSection alloc] initWithFacade:v350];
      value36 = [(_SFPBCardSection *)v349 value];
      [value36 setMediaRemoteControlCardSection:v193];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:37];
      v195 = [[_SFPBMapPlaceCardSection alloc] initWithFacade:v350];
      value37 = [(_SFPBCardSection *)v349 value];
      [value37 setMapPlaceCardSection:v195];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:38];
      v197 = [[_SFPBCompactRowCardSection alloc] initWithFacade:v350];
      value38 = [(_SFPBCardSection *)v349 value];
      [value38 setCompactRowCardSection:v197];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:39];
      v199 = [[_SFPBWorldMapCardSection alloc] initWithFacade:v350];
      value39 = [(_SFPBCardSection *)v349 value];
      [value39 setWorldMapCardSection:v199];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:40];
      v201 = [[_SFPBAttributionFooterCardSection alloc] initWithFacade:v350];
      value40 = [(_SFPBCardSection *)v349 value];
      [value40 setAttributionFooterCardSection:v201];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:41];
      v203 = [[_SFPBGridCardSection alloc] initWithFacade:v350];
      value41 = [(_SFPBCardSection *)v349 value];
      [value41 setGridCardSection:v203];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:42];
      v205 = [[_SFPBPersonHeaderCardSection alloc] initWithFacade:v350];
      value42 = [(_SFPBCardSection *)v349 value];
      [value42 setPersonHeaderCardSection:v205];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:43];
      v207 = [[_SFPBColorBarCardSection alloc] initWithFacade:v350];
      value43 = [(_SFPBCardSection *)v349 value];
      [value43 setColorBarCardSection:v207];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:44];
      v209 = [[_SFPBSplitCardSection alloc] initWithFacade:v350];
      value44 = [(_SFPBCardSection *)v349 value];
      [value44 setSplitCardSection:v209];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:45];
      v211 = [[_SFPBLinkPresentationCardSection alloc] initWithFacade:v350];
      value45 = [(_SFPBCardSection *)v349 value];
      [value45 setLinkPresentationCardSection:v211];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:46];
      v213 = [[_SFPBFindMyCardSection alloc] initWithFacade:v350];
      value46 = [(_SFPBCardSection *)v349 value];
      [value46 setFindMyCardSection:v213];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:47];
      v215 = [[_SFPBHeroCardSection alloc] initWithFacade:v350];
      value47 = [(_SFPBCardSection *)v349 value];
      [value47 setHeroCardSection:v215];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:48];
      v217 = [[_SFPBNewsCardSection alloc] initWithFacade:v350];
      value48 = [(_SFPBCardSection *)v349 value];
      [value48 setNewsCardSection:v217];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:49];
      v219 = [[_SFPBMiniCardSection alloc] initWithFacade:v350];
      value49 = [(_SFPBCardSection *)v349 value];
      [value49 setMiniCardSection:v219];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:50];
      v221 = [[_SFPBInfoCardSection alloc] initWithFacade:v350];
      value50 = [(_SFPBCardSection *)v349 value];
      [value50 setInfoCardSection:v221];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:51];
      v223 = [[_SFPBCollectionCardSection alloc] initWithFacade:v350];
      value51 = [(_SFPBCardSection *)v349 value];
      [value51 setCollectionCardSection:v223];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:52];
      v225 = [[_SFPBCombinedCardSection alloc] initWithFacade:v350];
      value52 = [(_SFPBCardSection *)v349 value];
      [value52 setCombinedCardSection:v225];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:53];
      v227 = [[_SFPBResponseWrapperCardSection alloc] initWithFacade:v350];
      value53 = [(_SFPBCardSection *)v349 value];
      [value53 setResponseWrapperCardSection:v227];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:54];
      v229 = [[_SFPBListenToCardSection alloc] initWithFacade:v350];
      value54 = [(_SFPBCardSection *)v349 value];
      [value54 setListenToCardSection:v229];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:55];
      v231 = [[_SFPBWatchNowCardSection alloc] initWithFacade:v350];
      value55 = [(_SFPBCardSection *)v349 value];
      [value55 setWatchNowCardSection:v231];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:56];
      v233 = [[_SFPBStrokeAnimationCardSection alloc] initWithFacade:v350];
      value56 = [(_SFPBCardSection *)v349 value];
      [value56 setStrokeAnimationCardSection:v233];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:57];
      v235 = [[_SFPBButtonListCardSection alloc] initWithFacade:v350];
      value57 = [(_SFPBCardSection *)v349 value];
      [value57 setButtonListCardSection:v235];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:58];
      v237 = [[_SFPBCommandRowCardSection alloc] initWithFacade:v350];
      value58 = [(_SFPBCardSection *)v349 value];
      [value58 setCommandRowCardSection:v237];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:59];
      v239 = [[_SFPBLeadingTrailingCardSection alloc] initWithFacade:v350];
      value59 = [(_SFPBCardSection *)v349 value];
      [value59 setLeadingTrailingCardSection:v239];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:60];
      v241 = [[_SFPBHeroTitleCardSection alloc] initWithFacade:v350];
      value60 = [(_SFPBCardSection *)v349 value];
      [value60 setHeroTitleCardSection:v241];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:61];
      v243 = [[_SFPBArchiveViewCardSection alloc] initWithFacade:v350];
      value61 = [(_SFPBCardSection *)v349 value];
      [value61 setArchiveViewCardSection:v243];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:63];
      v245 = [[_SFPBAppIconCardSection alloc] initWithFacade:v350];
      value62 = [(_SFPBCardSection *)v349 value];
      [value62 setAppIconCardSection:v245];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:64];
      v247 = [[_SFPBLargeTitleDetailedRowCardSection alloc] initWithFacade:v350];
      value63 = [(_SFPBCardSection *)v349 value];
      [value63 setLargeTitleDetailedRowCardSection:v247];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:90];
      v249 = [[_SFPBSafariTableOfContentsCardSection alloc] initWithFacade:v350];
      value64 = [(_SFPBCardSection *)v349 value];
      [value64 setSafariTableOfContentsCardSection:v249];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:200];
      v251 = [[_SFPBRFSummaryItemShortNumberCardSection alloc] initWithFacade:v350];
      value65 = [(_SFPBCardSection *)v349 value];
      [value65 setRfSummaryItemShortNumberCardSection:v251];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:201];
      v253 = [[_SFPBRFSummaryItemTextCardSection alloc] initWithFacade:v350];
      value66 = [(_SFPBCardSection *)v349 value];
      [value66 setRfSummaryItemTextCardSection:v253];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:202];
      v255 = [[_SFPBRFSummaryItemStandardCardSection alloc] initWithFacade:v350];
      value67 = [(_SFPBCardSection *)v349 value];
      [value67 setRfSummaryItemStandardCardSection:v255];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:203];
      v257 = [[_SFPBRFFactItemShortNumberCardSection alloc] initWithFacade:v350];
      value68 = [(_SFPBCardSection *)v349 value];
      [value68 setRfFactItemShortNumberCardSection:v257];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:204];
      v259 = [[_SFPBRFFactItemStandardCardSection alloc] initWithFacade:v350];
      value69 = [(_SFPBCardSection *)v349 value];
      [value69 setRfFactItemStandardCardSection:v259];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:205];
      v261 = [[_SFPBRFLongItemStandardCardSection alloc] initWithFacade:v350];
      value70 = [(_SFPBCardSection *)v349 value];
      [value70 setRfLongItemStandardCardSection:v261];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:206];
      v263 = [[_SFPBRFPrimaryHeaderRichCardSection alloc] initWithFacade:v350];
      value71 = [(_SFPBCardSection *)v349 value];
      [value71 setRfPrimaryHeaderRichCardSection:v263];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:207];
      v265 = [[_SFPBRFPrimaryHeaderStandardCardSection alloc] initWithFacade:v350];
      value72 = [(_SFPBCardSection *)v349 value];
      [value72 setRfPrimaryHeaderStandardCardSection:v265];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:208];
      v267 = [[_SFPBRFReferenceFootnoteCardSection alloc] initWithFacade:v350];
      value73 = [(_SFPBCardSection *)v349 value];
      [value73 setRfReferenceFootnoteCardSection:v267];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:209];
      v269 = [[_SFPBRFReferenceRichCardSection alloc] initWithFacade:v350];
      value74 = [(_SFPBCardSection *)v349 value];
      [value74 setRfReferenceRichCardSection:v269];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:210];
      v271 = [[_SFPBRFSimpleItemRichCardSection alloc] initWithFacade:v350];
      value75 = [(_SFPBCardSection *)v349 value];
      [value75 setRfSimpleItemRichCardSection:v271];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:211];
      v273 = [[_SFPBRFSimpleItemStandardCardSection alloc] initWithFacade:v350];
      value76 = [(_SFPBCardSection *)v349 value];
      [value76 setRfSimpleItemStandardCardSection:v273];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:212];
      v275 = [[_SFPBRFSummaryItemAlignedTextCardSection alloc] initWithFacade:v350];
      value77 = [(_SFPBCardSection *)v349 value];
      [value77 setRfSummaryItemAlignedTextCardSection:v275];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:213];
      v277 = [[_SFPBRFExpandableStandardCardSection alloc] initWithFacade:v350];
      value78 = [(_SFPBCardSection *)v349 value];
      [value78 setRfExpandableStandardCardSection:v277];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:214];
      v279 = [[_SFPBRFFactItemButtonCardSection alloc] initWithFacade:v350];
      value79 = [(_SFPBCardSection *)v349 value];
      [value79 setRfFactItemButtonCardSection:v279];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:215];
      v281 = [[_SFPBRFFactItemHeroNumberCardSection alloc] initWithFacade:v350];
      value80 = [(_SFPBCardSection *)v349 value];
      [value80 setRfFactItemHeroNumberCardSection:v281];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:216];
      v283 = [[_SFPBRFPrimaryHeaderMarqueeCardSection alloc] initWithFacade:v350];
      value81 = [(_SFPBCardSection *)v349 value];
      [value81 setRfPrimaryHeaderMarqueeCardSection:v283];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:217];
      v285 = [[_SFPBRFSummaryItemDetailedTextCardSection alloc] initWithFacade:v350];
      value82 = [(_SFPBCardSection *)v349 value];
      [value82 setRfSummaryItemDetailedTextCardSection:v285];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:218];
      v287 = [[_SFPBRFSimpleItemPlayerCardSection alloc] initWithFacade:v350];
      value83 = [(_SFPBCardSection *)v349 value];
      [value83 setRfSimpleItemPlayerCardSection:v287];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:219];
      v289 = [[_SFPBRFSummaryItemPairCardSection alloc] initWithFacade:v350];
      value84 = [(_SFPBCardSection *)v349 value];
      [value84 setRfSummaryItemPairCardSection:v289];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:220];
      v291 = [[_SFPBRFSummaryItemPairNumberCardSection alloc] initWithFacade:v350];
      value85 = [(_SFPBCardSection *)v349 value];
      [value85 setRfSummaryItemPairNumberCardSection:v291];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:221];
      v293 = [[_SFPBRFFactItemShortHeroNumberCardSection alloc] initWithFacade:v350];
      value86 = [(_SFPBCardSection *)v349 value];
      [value86 setRfFactItemShortHeroNumberCardSection:v293];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:222];
      v295 = [[_SFPBRFFactItemDetailedNumberCardSection alloc] initWithFacade:v350];
      value87 = [(_SFPBCardSection *)v349 value];
      [value87 setRfFactItemDetailedNumberCardSection:v295];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:223];
      v297 = [[_SFPBRFFactItemHeroButtonCardSection alloc] initWithFacade:v350];
      value88 = [(_SFPBCardSection *)v349 value];
      [value88 setRfFactItemHeroButtonCardSection:v297];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:224];
      v299 = [[_SFPBRFFactItemImageRightCardSection alloc] initWithFacade:v350];
      value89 = [(_SFPBCardSection *)v349 value];
      [value89 setRfFactItemImageRightCardSection:v299];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:225];
      v301 = [[_SFPBRFSummaryItemSwitchV2CardSection alloc] initWithFacade:v350];
      value90 = [(_SFPBCardSection *)v349 value];
      [value90 setRfSummaryItemSwitchV2CardSection:v301];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:226];
      v303 = [[_SFPBRFTableHeaderCardSection alloc] initWithFacade:v350];
      value91 = [(_SFPBCardSection *)v349 value];
      [value91 setRfTableHeaderCardSection:v303];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:227];
      v305 = [[_SFPBRFTableRowCardSection alloc] initWithFacade:v350];
      value92 = [(_SFPBCardSection *)v349 value];
      [value92 setRfTableRowCardSection:v305];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:228];
      v307 = [[_SFPBRFSimpleItemVisualElementCardSection alloc] initWithFacade:v350];
      value93 = [(_SFPBCardSection *)v349 value];
      [value93 setRfSimpleItemVisualElementCardSection:v307];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:229];
      v309 = [[_SFPBRFSummaryItemPlayerCardSection alloc] initWithFacade:v350];
      value94 = [(_SFPBCardSection *)v349 value];
      [value94 setRfSummaryItemPlayerCardSection:v309];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:230];
      v311 = [[_SFPBRFSummaryItemImageRightCardSection alloc] initWithFacade:v350];
      value95 = [(_SFPBCardSection *)v349 value];
      [value95 setRfSummaryItemImageRightCardSection:v311];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:231];
      v313 = [[_SFPBRFSummaryItemButtonCardSection alloc] initWithFacade:v350];
      value96 = [(_SFPBCardSection *)v349 value];
      [value96 setRfSummaryItemButtonCardSection:v313];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:232];
      v315 = [[_SFPBRFSimpleItemReverseRichCardSection alloc] initWithFacade:v350];
      value97 = [(_SFPBCardSection *)v349 value];
      [value97 setRfSimpleItemReverseRichCardSection:v315];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:233];
      v317 = [[_SFPBRFSimpleItemRichSearchResultCardSection alloc] initWithFacade:v350];
      value98 = [(_SFPBCardSection *)v349 value];
      [value98 setRfSimpleItemRichSearchResultCardSection:v317];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:234];
      v319 = [[_SFPBRFPrimaryHeaderStackedImageCardSection alloc] initWithFacade:v350];
      value99 = [(_SFPBCardSection *)v349 value];
      [value99 setRfPrimaryHeaderStackedImageCardSection:v319];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:235];
      v321 = [[_SFPBRFReferenceItemLogoCardSection alloc] initWithFacade:v350];
      value100 = [(_SFPBCardSection *)v349 value];
      [value100 setRfReferenceItemLogoCardSection:v321];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:236];
      v323 = [[_SFPBRFReferenceItemButtonCardSection alloc] initWithFacade:v350];
      value101 = [(_SFPBCardSection *)v349 value];
      [value101 setRfReferenceItemButtonCardSection:v323];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:237];
      v325 = [[_SFPBRFButtonCardSection alloc] initWithFacade:v350];
      value102 = [(_SFPBCardSection *)v349 value];
      [value102 setRfButtonCardSection:v325];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:238];
      v327 = [[_SFPBRFBinaryButtonCardSection alloc] initWithFacade:v350];
      value103 = [(_SFPBCardSection *)v349 value];
      [value103 setRfBinaryButtonCardSection:v327];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:239];
      v329 = [[_SFPBRFReferenceCenteredCardSection alloc] initWithFacade:v350];
      value104 = [(_SFPBCardSection *)v349 value];
      [value104 setRfReferenceCenteredCardSection:v329];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:240];
      v331 = [[_SFPBRFSecondaryHeaderStandardCardSection alloc] initWithFacade:v350];
      value105 = [(_SFPBCardSection *)v349 value];
      [value105 setRfSecondaryHeaderStandardCardSection:v331];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:241];
      v333 = [[_SFPBRFSecondaryHeaderEmphasizedCardSection alloc] initWithFacade:v350];
      value106 = [(_SFPBCardSection *)v349 value];
      [value106 setRfSecondaryHeaderEmphasizedCardSection:v333];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:242];
      v335 = [[_SFPBRFMapCardSection alloc] initWithFacade:v350];
      value107 = [(_SFPBCardSection *)v349 value];
      [value107 setRfMapCardSection:v335];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:243];
      v337 = [[_SFPBRFReferenceStandardCardSection alloc] initWithFacade:v350];
      value108 = [(_SFPBCardSection *)v349 value];
      [value108 setRfReferenceStandardCardSection:v337];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:744];
      v339 = [[_SFPBRFMultiButtonCardSection alloc] initWithFacade:v350];
      value109 = [(_SFPBCardSection *)v349 value];
      [value109 setRfMultiButtonCardSection:v339];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:745];
      v341 = [[_SFPBRFDisambiguationTitleCardSection alloc] initWithFacade:v350];
      value110 = [(_SFPBCardSection *)v349 value];
      [value110 setRfDisambiguationTitleCardSection:v341];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFPBCardSection *)v349 setType:246];
      v343 = [[_SFPBRFSummaryItemExpandableCardSection alloc] initWithFacade:v350];
      value111 = [(_SFPBCardSection *)v349 value];
      [value111 setRfSummaryItemExpandableCardSection:v343];
    }

    v345 = v349;
  }

  return v5;
}

- (_SFPBCardSection)initWithDictionary:(id)dictionary
{
  v208 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v198.receiver = self;
  v198.super_class = _SFPBCardSection;
  v5 = [(_SFPBCardSection *)&v198 init];

  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"type"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCardSection setType:](v5, "setType:", [v6 intValue]);
    }

    v134 = v6;
    v7 = [dictionaryCopy objectForKeyedSubscript:@"value"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[_SFPBCardSectionValue alloc] initWithDictionary:v7];
      [(_SFPBCardSection *)v5 setValue:v8];
    }

    v133 = v7;
    v9 = [dictionaryCopy objectForKeyedSubscript:@"nextCard"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[_SFPBCard alloc] initWithDictionary:v9];
      [(_SFPBCardSection *)v5 setNextCard:v10];
    }

    v132 = v9;
    v11 = [dictionaryCopy objectForKeyedSubscript:@"commands"];
    objc_opt_class();
    v161 = v11;
    if (objc_opt_isKindOfClass())
    {
      v196 = 0u;
      v197 = 0u;
      v194 = 0u;
      v195 = 0u;
      v12 = v11;
      v13 = [v12 countByEnumeratingWithState:&v194 objects:v207 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v195;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v195 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v194 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v18 = [[_SFPBAbstractCommand alloc] initWithDictionary:v17];
              [(_SFPBCardSection *)v5 addCommands:v18];
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v194 objects:v207 count:16];
        }

        while (v14);
      }
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"parameterKeyPaths"];
    objc_opt_class();
    v160 = v19;
    if (objc_opt_isKindOfClass())
    {
      v20 = dictionaryCopy;
      v192 = 0u;
      v193 = 0u;
      v190 = 0u;
      v191 = 0u;
      v21 = v19;
      v22 = [v21 countByEnumeratingWithState:&v190 objects:v206 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v191;
        do
        {
          for (j = 0; j != v23; ++j)
          {
            if (*v191 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = *(*(&v190 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v27 = [v26 copy];
              [(_SFPBCardSection *)v5 addParameterKeyPaths:v27];
            }
          }

          v23 = [v21 countByEnumeratingWithState:&v190 objects:v206 count:16];
        }

        while (v23);
      }

      dictionaryCopy = v20;
    }

    v28 = [dictionaryCopy objectForKeyedSubscript:@"cardSectionId"];
    objc_opt_class();
    v159 = v28;
    if (objc_opt_isKindOfClass())
    {
      v29 = [v28 copy];
      [(_SFPBCardSection *)v5 setCardSectionId:v29];
    }

    v30 = [dictionaryCopy objectForKeyedSubscript:@"resultIdentifier"];
    objc_opt_class();
    v158 = v30;
    if (objc_opt_isKindOfClass())
    {
      v31 = [v30 copy];
      [(_SFPBCardSection *)v5 setResultIdentifier:v31];
    }

    v32 = [dictionaryCopy objectForKeyedSubscript:@"userReportRequest"];
    objc_opt_class();
    v157 = v32;
    if (objc_opt_isKindOfClass())
    {
      v33 = [[_SFPBUserReportRequest alloc] initWithDictionary:v32];
      [(_SFPBCardSection *)v5 setUserReportRequest:v33];
    }

    v34 = [dictionaryCopy objectForKeyedSubscript:@"command"];
    objc_opt_class();
    v156 = v34;
    if (objc_opt_isKindOfClass())
    {
      v35 = [[_SFPBCommand alloc] initWithDictionary:v34];
      [(_SFPBCardSection *)v5 setCommand:v35];
    }

    v36 = [dictionaryCopy objectForKeyedSubscript:@"previewCommand"];
    objc_opt_class();
    v155 = v36;
    if (objc_opt_isKindOfClass())
    {
      v37 = [[_SFPBCommand alloc] initWithDictionary:v36];
      [(_SFPBCardSection *)v5 setPreviewCommand:v37];
    }

    v38 = [dictionaryCopy objectForKeyedSubscript:@"previewButtonItems"];
    objc_opt_class();
    v154 = v38;
    if (objc_opt_isKindOfClass())
    {
      v188 = 0u;
      v189 = 0u;
      v186 = 0u;
      v187 = 0u;
      v39 = v38;
      v40 = [v39 countByEnumeratingWithState:&v186 objects:v205 count:16];
      if (v40)
      {
        v41 = v40;
        v42 = *v187;
        do
        {
          for (k = 0; k != v41; ++k)
          {
            if (*v187 != v42)
            {
              objc_enumerationMutation(v39);
            }

            v44 = *(*(&v186 + 1) + 8 * k);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v45 = [[_SFPBButtonItem alloc] initWithDictionary:v44];
              [(_SFPBCardSection *)v5 addPreviewButtonItems:v45];
            }
          }

          v41 = [v39 countByEnumeratingWithState:&v186 objects:v205 count:16];
        }

        while (v41);
      }
    }

    v46 = [dictionaryCopy objectForKeyedSubscript:@"cardSectionDetail"];
    objc_opt_class();
    v153 = v46;
    if (objc_opt_isKindOfClass())
    {
      v47 = [v46 copy];
      [(_SFPBCardSection *)v5 setCardSectionDetail:v47];
    }

    v48 = [dictionaryCopy objectForKeyedSubscript:@"previewButtonItemsTitle"];
    objc_opt_class();
    v152 = v48;
    if (objc_opt_isKindOfClass())
    {
      v49 = [v48 copy];
      [(_SFPBCardSection *)v5 setPreviewButtonItemsTitle:v49];
    }

    v50 = [dictionaryCopy objectForKeyedSubscript:@"backgroundColor"];
    objc_opt_class();
    v151 = v50;
    if (objc_opt_isKindOfClass())
    {
      v51 = [[_SFPBColor alloc] initWithDictionary:v50];
      [(_SFPBCardSection *)v5 setBackgroundColor:v51];
    }

    v52 = [dictionaryCopy objectForKeyedSubscript:@"shouldHideInAmbientMode"];
    objc_opt_class();
    v150 = v52;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCardSection setShouldHideInAmbientMode:](v5, "setShouldHideInAmbientMode:", [v52 BOOLValue]);
    }

    v53 = [dictionaryCopy objectForKeyedSubscript:@"leadingSwipeButtonItems"];
    objc_opt_class();
    v149 = v53;
    if (objc_opt_isKindOfClass())
    {
      v184 = 0u;
      v185 = 0u;
      v182 = 0u;
      v183 = 0u;
      v54 = v53;
      v55 = [v54 countByEnumeratingWithState:&v182 objects:v204 count:16];
      if (v55)
      {
        v56 = v55;
        v57 = *v183;
        do
        {
          for (m = 0; m != v56; ++m)
          {
            if (*v183 != v57)
            {
              objc_enumerationMutation(v54);
            }

            v59 = *(*(&v182 + 1) + 8 * m);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v60 = [[_SFPBButtonItem alloc] initWithDictionary:v59];
              [(_SFPBCardSection *)v5 addLeadingSwipeButtonItems:v60];
            }
          }

          v56 = [v54 countByEnumeratingWithState:&v182 objects:v204 count:16];
        }

        while (v56);
      }
    }

    v61 = [dictionaryCopy objectForKeyedSubscript:@"trailingSwipeButtonItems"];
    objc_opt_class();
    v148 = v61;
    if (objc_opt_isKindOfClass())
    {
      v180 = 0u;
      v181 = 0u;
      v178 = 0u;
      v179 = 0u;
      v62 = v61;
      v63 = [v62 countByEnumeratingWithState:&v178 objects:v203 count:16];
      if (v63)
      {
        v64 = v63;
        v65 = *v179;
        do
        {
          for (n = 0; n != v64; ++n)
          {
            if (*v179 != v65)
            {
              objc_enumerationMutation(v62);
            }

            v67 = *(*(&v178 + 1) + 8 * n);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v68 = [[_SFPBButtonItem alloc] initWithDictionary:v67];
              [(_SFPBCardSection *)v5 addTrailingSwipeButtonItems:v68];
            }
          }

          v64 = [v62 countByEnumeratingWithState:&v178 objects:v203 count:16];
        }

        while (v64);
      }
    }

    v69 = [dictionaryCopy objectForKeyedSubscript:@"punchoutOptions"];
    objc_opt_class();
    v147 = v69;
    if (objc_opt_isKindOfClass())
    {
      v176 = 0u;
      v177 = 0u;
      v174 = 0u;
      v175 = 0u;
      v70 = v69;
      v71 = [v70 countByEnumeratingWithState:&v174 objects:v202 count:16];
      if (v71)
      {
        v72 = v71;
        v73 = *v175;
        do
        {
          for (ii = 0; ii != v72; ++ii)
          {
            if (*v175 != v73)
            {
              objc_enumerationMutation(v70);
            }

            v75 = *(*(&v174 + 1) + 8 * ii);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v76 = [[_SFPBPunchout alloc] initWithDictionary:v75];
              [(_SFPBCardSection *)v5 addPunchoutOptions:v76];
            }
          }

          v72 = [v70 countByEnumeratingWithState:&v174 objects:v202 count:16];
        }

        while (v72);
      }
    }

    v77 = [dictionaryCopy objectForKeyedSubscript:@"punchoutPickerTitle"];
    objc_opt_class();
    v146 = v77;
    if (objc_opt_isKindOfClass())
    {
      v78 = [v77 copy];
      [(_SFPBCardSection *)v5 setPunchoutPickerTitle:v78];
    }

    v79 = [dictionaryCopy objectForKeyedSubscript:@"punchoutPickerDismissText"];
    objc_opt_class();
    v145 = v79;
    if (objc_opt_isKindOfClass())
    {
      v80 = [v79 copy];
      [(_SFPBCardSection *)v5 setPunchoutPickerDismissText:v80];
    }

    v81 = [dictionaryCopy objectForKeyedSubscript:@"canBeHidden"];
    objc_opt_class();
    v144 = v81;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v81 BOOLValue]);
    }

    v82 = [dictionaryCopy objectForKeyedSubscript:@"hasTopPadding"];
    objc_opt_class();
    v143 = v82;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v82 BOOLValue]);
    }

    v83 = [dictionaryCopy objectForKeyedSubscript:@"hasBottomPadding"];
    objc_opt_class();
    v142 = v83;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v83 BOOLValue]);
    }

    v84 = [dictionaryCopy objectForKeyedSubscript:@"separatorStyle"];
    objc_opt_class();
    v141 = v84;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v84 intValue]);
    }

    v85 = [dictionaryCopy objectForKeyedSubscript:@"referencedCommands"];
    objc_opt_class();
    v140 = v85;
    if (objc_opt_isKindOfClass())
    {
      v172 = 0u;
      v173 = 0u;
      v170 = 0u;
      v171 = 0u;
      v86 = v85;
      v87 = [v86 countByEnumeratingWithState:&v170 objects:v201 count:16];
      if (v87)
      {
        v88 = v87;
        v89 = *v171;
        do
        {
          for (jj = 0; jj != v88; ++jj)
          {
            if (*v171 != v89)
            {
              objc_enumerationMutation(v86);
            }

            v91 = *(*(&v170 + 1) + 8 * jj);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v92 = [[_SFPBCommand alloc] initWithDictionary:v91];
              [(_SFPBCardSection *)v5 addReferencedCommands:v92];
            }
          }

          v88 = [v86 countByEnumeratingWithState:&v170 objects:v201 count:16];
        }

        while (v88);
      }
    }

    v93 = [dictionaryCopy objectForKeyedSubscript:@"forceEnable3DTouch"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCardSection setForceEnable3DTouch:](v5, "setForceEnable3DTouch:", [v93 BOOLValue]);
    }

    v94 = [dictionaryCopy objectForKeyedSubscript:@"shouldShowInSmartDialog"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCardSection setShouldShowInSmartDialog:](v5, "setShouldShowInSmartDialog:", [v94 BOOLValue]);
    }

    v95 = [dictionaryCopy objectForKeyedSubscript:@"appEntityAnnotation"];
    objc_opt_class();
    v139 = v95;
    if (objc_opt_isKindOfClass())
    {
      v96 = [[_SFPBAppEntityAnnotation alloc] initWithDictionary:v95];
      [(_SFPBCardSection *)v5 setAppEntityAnnotation:v96];
    }

    v97 = [dictionaryCopy objectForKeyedSubscript:@"emphasisSubjectId"];
    objc_opt_class();
    v138 = v97;
    if (objc_opt_isKindOfClass())
    {
      v98 = [v97 copy];
      [(_SFPBCardSection *)v5 setEmphasisSubjectId:v98];
    }

    v99 = [dictionaryCopy objectForKeyedSubscript:@"increasedContrastMode"];
    objc_opt_class();
    v137 = v99;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCardSection setIncreasedContrastMode:](v5, "setIncreasedContrastMode:", [v99 intValue]);
    }

    v100 = [dictionaryCopy objectForKeyedSubscript:@"secondaryCommand"];
    objc_opt_class();
    v136 = v100;
    if (objc_opt_isKindOfClass())
    {
      v101 = [[_SFPBCommand alloc] initWithDictionary:v100];
      [(_SFPBCardSection *)v5 setSecondaryCommand:v101];
    }

    v102 = [dictionaryCopy objectForKeyedSubscript:@"requiredLevelOfDetail"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCardSection setRequiredLevelOfDetail:](v5, "setRequiredLevelOfDetail:", [v102 intValue]);
    }

    v130 = v94;
    v131 = v93;
    v103 = [dictionaryCopy objectForKeyedSubscript:@"racFeedbackSubfeatureId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v104 = [v103 copy];
      [(_SFPBCardSection *)v5 setRacFeedbackSubfeatureId:v104];
    }

    v105 = [dictionaryCopy objectForKeyedSubscript:@"racFeedbackLoggingContent"];
    objc_opt_class();
    v135 = dictionaryCopy;
    v128 = v103;
    v129 = v102;
    v127 = v105;
    if (objc_opt_isKindOfClass())
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      racFeedbackLoggingContent = v5->_racFeedbackLoggingContent;
      v5->_racFeedbackLoggingContent = dictionary;

      v168 = 0u;
      v169 = 0u;
      v166 = 0u;
      v167 = 0u;
      v108 = v105;
      v109 = [v108 countByEnumeratingWithState:&v166 objects:v200 count:16];
      if (v109)
      {
        v110 = v109;
        v111 = *v167;
        do
        {
          for (kk = 0; kk != v110; ++kk)
          {
            if (*v167 != v111)
            {
              objc_enumerationMutation(v108);
            }

            v113 = *(*(&v166 + 1) + 8 * kk);
            v114 = [v108 objectForKeyedSubscript:v113];
            [(NSDictionary *)v5->_racFeedbackLoggingContent setObject:v114 forKey:v113];
          }

          v110 = [v108 countByEnumeratingWithState:&v166 objects:v200 count:16];
        }

        while (v110);
      }

      dictionaryCopy = v135;
      v103 = v128;
      v105 = v127;
    }

    v115 = [dictionaryCopy objectForKeyedSubscript:@"copyableItems"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v164 = 0u;
      v165 = 0u;
      v162 = 0u;
      v163 = 0u;
      v116 = v115;
      v117 = [v116 countByEnumeratingWithState:&v162 objects:v199 count:16];
      if (v117)
      {
        v118 = v117;
        v119 = *v163;
        do
        {
          for (mm = 0; mm != v118; ++mm)
          {
            if (*v163 != v119)
            {
              objc_enumerationMutation(v116);
            }

            v121 = *(*(&v162 + 1) + 8 * mm);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v122 = [[_SFPBCopyItem alloc] initWithDictionary:v121];
              [(_SFPBCardSection *)v5 addCopyableItems:v122];
            }
          }

          v118 = [v116 countByEnumeratingWithState:&v162 objects:v199 count:16];
        }

        while (v118);
      }

      dictionaryCopy = v135;
      v103 = v128;
      v102 = v129;
      v105 = v127;
    }

    v123 = [dictionaryCopy objectForKeyedSubscript:@"applicationBundleIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v124 = [v123 copy];
      [(_SFPBCardSection *)v5 setApplicationBundleIdentifier:v124];
    }

    v125 = v5;
  }

  return v5;
}

- (_SFPBCardSection)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBCardSection *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBCardSection *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v169 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_appEntityAnnotation)
  {
    appEntityAnnotation = [(_SFPBCardSection *)self appEntityAnnotation];
    dictionaryRepresentation = [appEntityAnnotation dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"appEntityAnnotation"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"appEntityAnnotation"];
    }
  }

  if (self->_applicationBundleIdentifier)
  {
    applicationBundleIdentifier = [(_SFPBCardSection *)self applicationBundleIdentifier];
    v8 = [applicationBundleIdentifier copy];
    [dictionary setObject:v8 forKeyedSubscript:@"applicationBundleIdentifier"];
  }

  if (self->_backgroundColor)
  {
    backgroundColor = [(_SFPBCardSection *)self backgroundColor];
    dictionaryRepresentation2 = [backgroundColor dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"backgroundColor"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"backgroundColor"];
    }
  }

  if (self->_canBeHidden)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBCardSection canBeHidden](self, "canBeHidden")}];
    [dictionary setObject:v12 forKeyedSubscript:@"canBeHidden"];
  }

  if (self->_cardSectionDetail)
  {
    cardSectionDetail = [(_SFPBCardSection *)self cardSectionDetail];
    v14 = [cardSectionDetail copy];
    [dictionary setObject:v14 forKeyedSubscript:@"cardSectionDetail"];
  }

  if (self->_cardSectionId)
  {
    cardSectionId = [(_SFPBCardSection *)self cardSectionId];
    v16 = [cardSectionId copy];
    [dictionary setObject:v16 forKeyedSubscript:@"cardSectionId"];
  }

  if (self->_command)
  {
    command = [(_SFPBCardSection *)self command];
    dictionaryRepresentation3 = [command dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"command"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"command"];
    }
  }

  v128 = dictionary;
  if ([(NSArray *)self->_commands count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v157 = 0u;
    v158 = 0u;
    v159 = 0u;
    v160 = 0u;
    v21 = self->_commands;
    v22 = [(NSArray *)v21 countByEnumeratingWithState:&v157 objects:v168 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v158;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v158 != v24)
          {
            objc_enumerationMutation(v21);
          }

          dictionaryRepresentation4 = [*(*(&v157 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation4)
          {
            [array addObject:dictionaryRepresentation4];
          }

          else
          {
            null4 = [MEMORY[0x1E695DFB0] null];
            [array addObject:null4];
          }
        }

        v23 = [(NSArray *)v21 countByEnumeratingWithState:&v157 objects:v168 count:16];
      }

      while (v23);
    }

    dictionary = v128;
    [v128 setObject:array forKeyedSubscript:@"commands"];
  }

  if ([(NSArray *)self->_copyableItems count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v153 = 0u;
    v154 = 0u;
    v155 = 0u;
    v156 = 0u;
    v29 = self->_copyableItems;
    v30 = [(NSArray *)v29 countByEnumeratingWithState:&v153 objects:v167 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v154;
      do
      {
        for (j = 0; j != v31; ++j)
        {
          if (*v154 != v32)
          {
            objc_enumerationMutation(v29);
          }

          dictionaryRepresentation5 = [*(*(&v153 + 1) + 8 * j) dictionaryRepresentation];
          if (dictionaryRepresentation5)
          {
            [array2 addObject:dictionaryRepresentation5];
          }

          else
          {
            null5 = [MEMORY[0x1E695DFB0] null];
            [array2 addObject:null5];
          }
        }

        v31 = [(NSArray *)v29 countByEnumeratingWithState:&v153 objects:v167 count:16];
      }

      while (v31);
    }

    dictionary = v128;
    [v128 setObject:array2 forKeyedSubscript:@"copyableItems"];
  }

  if (self->_emphasisSubjectId)
  {
    emphasisSubjectId = [(_SFPBCardSection *)self emphasisSubjectId];
    v37 = [emphasisSubjectId copy];
    [dictionary setObject:v37 forKeyedSubscript:@"emphasisSubjectId"];
  }

  if (self->_forceEnable3DTouch)
  {
    v38 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBCardSection forceEnable3DTouch](self, "forceEnable3DTouch")}];
    [dictionary setObject:v38 forKeyedSubscript:@"forceEnable3DTouch"];
  }

  if (self->_hasBottomPadding)
  {
    v39 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBCardSection hasBottomPadding](self, "hasBottomPadding")}];
    [dictionary setObject:v39 forKeyedSubscript:@"hasBottomPadding"];
  }

  if (self->_hasTopPadding)
  {
    v40 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBCardSection hasTopPadding](self, "hasTopPadding")}];
    [dictionary setObject:v40 forKeyedSubscript:@"hasTopPadding"];
  }

  if (self->_increasedContrastMode)
  {
    increasedContrastMode = [(_SFPBCardSection *)self increasedContrastMode];
    if (increasedContrastMode >= 4)
    {
      v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", increasedContrastMode];
    }

    else
    {
      v42 = off_1E7ACE560[increasedContrastMode];
    }

    [dictionary setObject:v42 forKeyedSubscript:@"increasedContrastMode"];
  }

  if ([(NSArray *)self->_leadingSwipeButtonItems count])
  {
    array3 = [MEMORY[0x1E695DF70] array];
    v149 = 0u;
    v150 = 0u;
    v151 = 0u;
    v152 = 0u;
    v44 = self->_leadingSwipeButtonItems;
    v45 = [(NSArray *)v44 countByEnumeratingWithState:&v149 objects:v166 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = *v150;
      do
      {
        for (k = 0; k != v46; ++k)
        {
          if (*v150 != v47)
          {
            objc_enumerationMutation(v44);
          }

          dictionaryRepresentation6 = [*(*(&v149 + 1) + 8 * k) dictionaryRepresentation];
          if (dictionaryRepresentation6)
          {
            [array3 addObject:dictionaryRepresentation6];
          }

          else
          {
            null6 = [MEMORY[0x1E695DFB0] null];
            [array3 addObject:null6];
          }
        }

        v46 = [(NSArray *)v44 countByEnumeratingWithState:&v149 objects:v166 count:16];
      }

      while (v46);
    }

    dictionary = v128;
    [v128 setObject:array3 forKeyedSubscript:@"leadingSwipeButtonItems"];
  }

  if (self->_nextCard)
  {
    nextCard = [(_SFPBCardSection *)self nextCard];
    dictionaryRepresentation7 = [nextCard dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"nextCard"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"nextCard"];
    }
  }

  if (self->_parameterKeyPaths)
  {
    parameterKeyPaths = [(_SFPBCardSection *)self parameterKeyPaths];
    v55 = [parameterKeyPaths copy];
    [dictionary setObject:v55 forKeyedSubscript:@"parameterKeyPaths"];
  }

  if ([(NSArray *)self->_previewButtonItems count])
  {
    array4 = [MEMORY[0x1E695DF70] array];
    v145 = 0u;
    v146 = 0u;
    v147 = 0u;
    v148 = 0u;
    v57 = self->_previewButtonItems;
    v58 = [(NSArray *)v57 countByEnumeratingWithState:&v145 objects:v165 count:16];
    if (v58)
    {
      v59 = v58;
      v60 = *v146;
      do
      {
        for (m = 0; m != v59; ++m)
        {
          if (*v146 != v60)
          {
            objc_enumerationMutation(v57);
          }

          dictionaryRepresentation8 = [*(*(&v145 + 1) + 8 * m) dictionaryRepresentation];
          if (dictionaryRepresentation8)
          {
            [array4 addObject:dictionaryRepresentation8];
          }

          else
          {
            null8 = [MEMORY[0x1E695DFB0] null];
            [array4 addObject:null8];
          }
        }

        v59 = [(NSArray *)v57 countByEnumeratingWithState:&v145 objects:v165 count:16];
      }

      while (v59);
    }

    dictionary = v128;
    [v128 setObject:array4 forKeyedSubscript:@"previewButtonItems"];
  }

  if (self->_previewButtonItemsTitle)
  {
    previewButtonItemsTitle = [(_SFPBCardSection *)self previewButtonItemsTitle];
    v65 = [previewButtonItemsTitle copy];
    [dictionary setObject:v65 forKeyedSubscript:@"previewButtonItemsTitle"];
  }

  if (self->_previewCommand)
  {
    previewCommand = [(_SFPBCardSection *)self previewCommand];
    dictionaryRepresentation9 = [previewCommand dictionaryRepresentation];
    if (dictionaryRepresentation9)
    {
      [dictionary setObject:dictionaryRepresentation9 forKeyedSubscript:@"previewCommand"];
    }

    else
    {
      null9 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null9 forKeyedSubscript:@"previewCommand"];
    }
  }

  if ([(NSArray *)self->_punchoutOptions count])
  {
    array5 = [MEMORY[0x1E695DF70] array];
    v141 = 0u;
    v142 = 0u;
    v143 = 0u;
    v144 = 0u;
    v70 = self->_punchoutOptions;
    v71 = [(NSArray *)v70 countByEnumeratingWithState:&v141 objects:v164 count:16];
    if (v71)
    {
      v72 = v71;
      v73 = *v142;
      do
      {
        for (n = 0; n != v72; ++n)
        {
          if (*v142 != v73)
          {
            objc_enumerationMutation(v70);
          }

          dictionaryRepresentation10 = [*(*(&v141 + 1) + 8 * n) dictionaryRepresentation];
          if (dictionaryRepresentation10)
          {
            [array5 addObject:dictionaryRepresentation10];
          }

          else
          {
            null10 = [MEMORY[0x1E695DFB0] null];
            [array5 addObject:null10];
          }
        }

        v72 = [(NSArray *)v70 countByEnumeratingWithState:&v141 objects:v164 count:16];
      }

      while (v72);
    }

    dictionary = v128;
    [v128 setObject:array5 forKeyedSubscript:@"punchoutOptions"];
  }

  if (self->_punchoutPickerDismissText)
  {
    punchoutPickerDismissText = [(_SFPBCardSection *)self punchoutPickerDismissText];
    v78 = [punchoutPickerDismissText copy];
    [dictionary setObject:v78 forKeyedSubscript:@"punchoutPickerDismissText"];
  }

  if (self->_punchoutPickerTitle)
  {
    punchoutPickerTitle = [(_SFPBCardSection *)self punchoutPickerTitle];
    v80 = [punchoutPickerTitle copy];
    [dictionary setObject:v80 forKeyedSubscript:@"punchoutPickerTitle"];
  }

  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  v137 = 0u;
  v138 = 0u;
  v139 = 0u;
  v140 = 0u;
  v82 = self->_racFeedbackLoggingContent;
  v83 = [(NSDictionary *)v82 countByEnumeratingWithState:&v137 objects:v163 count:16];
  if (v83)
  {
    v84 = v83;
    v85 = *v138;
    do
    {
      for (ii = 0; ii != v84; ++ii)
      {
        if (*v138 != v85)
        {
          objc_enumerationMutation(v82);
        }

        v87 = *(*(&v137 + 1) + 8 * ii);
        v88 = [(NSDictionary *)self->_racFeedbackLoggingContent objectForKeyedSubscript:v87];
        [dictionary2 setObject:v88 forKeyedSubscript:v87];
      }

      v84 = [(NSDictionary *)v82 countByEnumeratingWithState:&v137 objects:v163 count:16];
    }

    while (v84);
  }

  [dictionary setObject:dictionary2 forKeyedSubscript:@"racFeedbackLoggingContent"];
  if (self->_racFeedbackSubfeatureId)
  {
    racFeedbackSubfeatureId = [(_SFPBCardSection *)self racFeedbackSubfeatureId];
    v90 = [racFeedbackSubfeatureId copy];
    [dictionary setObject:v90 forKeyedSubscript:@"racFeedbackSubfeatureId"];
  }

  if ([(NSArray *)self->_referencedCommands count])
  {
    array6 = [MEMORY[0x1E695DF70] array];
    v133 = 0u;
    v134 = 0u;
    v135 = 0u;
    v136 = 0u;
    v92 = self->_referencedCommands;
    v93 = [(NSArray *)v92 countByEnumeratingWithState:&v133 objects:v162 count:16];
    if (v93)
    {
      v94 = v93;
      v95 = *v134;
      do
      {
        for (jj = 0; jj != v94; ++jj)
        {
          if (*v134 != v95)
          {
            objc_enumerationMutation(v92);
          }

          dictionaryRepresentation11 = [*(*(&v133 + 1) + 8 * jj) dictionaryRepresentation];
          if (dictionaryRepresentation11)
          {
            [array6 addObject:dictionaryRepresentation11];
          }

          else
          {
            null11 = [MEMORY[0x1E695DFB0] null];
            [array6 addObject:null11];
          }
        }

        v94 = [(NSArray *)v92 countByEnumeratingWithState:&v133 objects:v162 count:16];
      }

      while (v94);
    }

    dictionary = v128;
    [v128 setObject:array6 forKeyedSubscript:@"referencedCommands"];
  }

  if (self->_requiredLevelOfDetail)
  {
    requiredLevelOfDetail = [(_SFPBCardSection *)self requiredLevelOfDetail];
    if (requiredLevelOfDetail >= 4)
    {
      v100 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", requiredLevelOfDetail];
    }

    else
    {
      v100 = off_1E7ACE560[requiredLevelOfDetail];
    }

    [dictionary setObject:v100 forKeyedSubscript:@"requiredLevelOfDetail"];
  }

  if (self->_resultIdentifier)
  {
    resultIdentifier = [(_SFPBCardSection *)self resultIdentifier];
    v102 = [resultIdentifier copy];
    [dictionary setObject:v102 forKeyedSubscript:@"resultIdentifier"];
  }

  if (self->_secondaryCommand)
  {
    secondaryCommand = [(_SFPBCardSection *)self secondaryCommand];
    dictionaryRepresentation12 = [secondaryCommand dictionaryRepresentation];
    if (dictionaryRepresentation12)
    {
      [dictionary setObject:dictionaryRepresentation12 forKeyedSubscript:@"secondaryCommand"];
    }

    else
    {
      null12 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null12 forKeyedSubscript:@"secondaryCommand"];
    }
  }

  if (self->_separatorStyle)
  {
    separatorStyle = [(_SFPBCardSection *)self separatorStyle];
    if (separatorStyle >= 6)
    {
      v106 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", separatorStyle];
    }

    else
    {
      v106 = off_1E7ACE580[separatorStyle];
    }

    [dictionary setObject:v106 forKeyedSubscript:@"separatorStyle"];
  }

  if (self->_shouldHideInAmbientMode)
  {
    v108 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBCardSection shouldHideInAmbientMode](self, "shouldHideInAmbientMode")}];
    [dictionary setObject:v108 forKeyedSubscript:@"shouldHideInAmbientMode"];
  }

  if (self->_shouldShowInSmartDialog)
  {
    v109 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBCardSection shouldShowInSmartDialog](self, "shouldShowInSmartDialog")}];
    [dictionary setObject:v109 forKeyedSubscript:@"shouldShowInSmartDialog"];
  }

  if ([(NSArray *)self->_trailingSwipeButtonItems count])
  {
    array7 = [MEMORY[0x1E695DF70] array];
    v129 = 0u;
    v130 = 0u;
    v131 = 0u;
    v132 = 0u;
    v111 = self->_trailingSwipeButtonItems;
    v112 = [(NSArray *)v111 countByEnumeratingWithState:&v129 objects:v161 count:16];
    if (v112)
    {
      v113 = v112;
      v114 = *v130;
      do
      {
        for (kk = 0; kk != v113; ++kk)
        {
          if (*v130 != v114)
          {
            objc_enumerationMutation(v111);
          }

          dictionaryRepresentation13 = [*(*(&v129 + 1) + 8 * kk) dictionaryRepresentation];
          if (dictionaryRepresentation13)
          {
            [array7 addObject:dictionaryRepresentation13];
          }

          else
          {
            null13 = [MEMORY[0x1E695DFB0] null];
            [array7 addObject:null13];
          }
        }

        v113 = [(NSArray *)v111 countByEnumeratingWithState:&v129 objects:v161 count:16];
      }

      while (v113);
    }

    dictionary = v128;
    [v128 setObject:array7 forKeyedSubscript:@"trailingSwipeButtonItems"];
  }

  if (self->_type)
  {
    type = [(_SFPBCardSection *)self type];
    v118 = @"0";
    switch(type)
    {
      case 0:
        break;
      case 1:
        v118 = @"1";
        break;
      case 2:
        v118 = @"2";
        break;
      case 3:
        v118 = @"3";
        break;
      case 4:
        v118 = @"4";
        break;
      case 5:
        v118 = @"5";
        break;
      case 6:
        v118 = @"6";
        break;
      case 7:
        v118 = @"7";
        break;
      case 8:
        v118 = @"8";
        break;
      case 9:
        v118 = @"9";
        break;
      case 10:
        v118 = @"10";
        break;
      case 11:
        v118 = @"11";
        break;
      case 12:
        v118 = @"12";
        break;
      case 13:
        v118 = @"13";
        break;
      case 14:
        v118 = @"14";
        break;
      case 15:
        v118 = @"15";
        break;
      case 16:
        v118 = @"16";
        break;
      case 17:
        v118 = @"17";
        break;
      case 18:
        v118 = @"18";
        break;
      case 19:
        v118 = @"19";
        break;
      case 20:
        v118 = @"20";
        break;
      case 21:
        v118 = @"21";
        break;
      case 22:
        v118 = @"22";
        break;
      case 23:
        v118 = @"23";
        break;
      case 24:
        v118 = @"24";
        break;
      case 25:
        v118 = @"25";
        break;
      case 26:
        v118 = @"26";
        break;
      case 27:
        v118 = @"27";
        break;
      case 28:
        v118 = @"28";
        break;
      case 29:
        v118 = @"29";
        break;
      case 30:
        v118 = @"30";
        break;
      case 31:
        v118 = @"31";
        break;
      case 32:
        v118 = @"32";
        break;
      case 33:
        v118 = @"33";
        break;
      case 34:
        v118 = @"34";
        break;
      case 35:
        v118 = @"35";
        break;
      case 36:
        v118 = @"36";
        break;
      case 37:
        v118 = @"37";
        break;
      case 38:
        v118 = @"38";
        break;
      case 39:
        v118 = @"39";
        break;
      case 40:
        v118 = @"40";
        break;
      case 41:
        v118 = @"41";
        break;
      case 42:
        v118 = @"42";
        break;
      case 43:
        v118 = @"43";
        break;
      case 44:
        v118 = @"44";
        break;
      case 45:
        v118 = @"45";
        break;
      case 46:
        v118 = @"46";
        break;
      case 47:
        v118 = @"47";
        break;
      case 48:
        v118 = @"48";
        break;
      case 49:
        v118 = @"49";
        break;
      case 50:
        v118 = @"50";
        break;
      case 51:
        v118 = @"51";
        break;
      case 52:
        v118 = @"52";
        break;
      case 53:
        v118 = @"53";
        break;
      case 54:
        v118 = @"54";
        break;
      case 55:
        v118 = @"55";
        break;
      case 56:
        v118 = @"56";
        break;
      case 57:
        v118 = @"57";
        break;
      case 58:
        v118 = @"58";
        break;
      case 59:
        v118 = @"59";
        break;
      case 60:
        v118 = @"60";
        break;
      case 61:
        v118 = @"61";
        break;
      case 63:
        v118 = @"63";
        break;
      case 64:
        v118 = @"64";
        break;
      case 200:
        v118 = @"200";
        break;
      case 201:
        v118 = @"201";
        break;
      case 202:
        v118 = @"202";
        break;
      case 203:
        v118 = @"203";
        break;
      case 204:
        v118 = @"204";
        break;
      case 205:
        v118 = @"205";
        break;
      case 206:
        v118 = @"206";
        break;
      case 207:
        v118 = @"207";
        break;
      case 208:
        v118 = @"208";
        break;
      case 209:
        v118 = @"209";
        break;
      case 210:
        v118 = @"210";
        break;
      case 211:
        v118 = @"211";
        break;
      case 212:
        v118 = @"212";
        break;
      case 213:
        v118 = @"213";
        break;
      case 214:
        v118 = @"214";
        break;
      case 215:
        v118 = @"215";
        break;
      case 216:
        v118 = @"216";
        break;
      case 217:
        v118 = @"217";
        break;
      case 218:
        v118 = @"218";
        break;
      case 219:
        v118 = @"219";
        break;
      case 220:
        v118 = @"220";
        break;
      case 221:
        v118 = @"221";
        break;
      case 222:
        v118 = @"222";
        break;
      case 223:
        v118 = @"223";
        break;
      case 224:
        v118 = @"224";
        break;
      case 225:
        v118 = @"225";
        break;
      case 226:
        v118 = @"226";
        break;
      case 227:
        v118 = @"227";
        break;
      case 228:
        v118 = @"228";
        break;
      case 229:
        v118 = @"229";
        break;
      case 230:
        v118 = @"230";
        break;
      case 231:
        v118 = @"231";
        break;
      case 232:
        v118 = @"232";
        break;
      case 233:
        v118 = @"233";
        break;
      case 234:
        v118 = @"234";
        break;
      case 235:
        v118 = @"235";
        break;
      case 236:
        v118 = @"236";
        break;
      case 237:
        v118 = @"237";
        break;
      case 238:
        v118 = @"238";
        break;
      case 239:
        v118 = @"239";
        break;
      case 240:
        v118 = @"240";
        break;
      case 241:
        v118 = @"241";
        break;
      case 242:
        v118 = @"242";
        break;
      case 243:
        v118 = @"243";
        break;
      case 244:
        v118 = @"244";
        break;
      case 245:
        v118 = @"245";
        break;
      case 246:
        v118 = @"246";
        break;
      default:
        v118 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", type];
        break;
    }

    [dictionary setObject:v118 forKeyedSubscript:@"type"];
  }

  if (self->_userReportRequest)
  {
    userReportRequest = [(_SFPBCardSection *)self userReportRequest];
    dictionaryRepresentation14 = [userReportRequest dictionaryRepresentation];
    if (dictionaryRepresentation14)
    {
      [dictionary setObject:dictionaryRepresentation14 forKeyedSubscript:@"userReportRequest"];
    }

    else
    {
      null14 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null14 forKeyedSubscript:@"userReportRequest"];
    }
  }

  if (self->_value)
  {
    value = [(_SFPBCardSection *)self value];
    dictionaryRepresentation15 = [value dictionaryRepresentation];
    if (dictionaryRepresentation15)
    {
      [dictionary setObject:dictionaryRepresentation15 forKeyedSubscript:@"value"];
    }

    else
    {
      null15 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null15 forKeyedSubscript:@"value"];
    }
  }

  v126 = dictionary;

  return dictionary;
}

- (unint64_t)hash
{
  v42 = 2654435761 * self->_type;
  v41 = [(_SFPBCardSectionValue *)self->_value hash];
  v40 = [(_SFPBCard *)self->_nextCard hash];
  v39 = [(NSArray *)self->_commands hash];
  v38 = [(NSArray *)self->_parameterKeyPaths hash];
  v37 = [(NSString *)self->_cardSectionId hash];
  v36 = [(NSString *)self->_resultIdentifier hash];
  v35 = [(_SFPBUserReportRequest *)self->_userReportRequest hash];
  v34 = [(_SFPBCommand *)self->_command hash];
  v33 = [(_SFPBCommand *)self->_previewCommand hash];
  v32 = [(NSArray *)self->_previewButtonItems hash];
  v31 = [(NSString *)self->_cardSectionDetail hash];
  v30 = [(NSString *)self->_previewButtonItemsTitle hash];
  v3 = [(_SFPBColor *)self->_backgroundColor hash];
  if (self->_shouldHideInAmbientMode)
  {
    v4 = 2654435761;
  }

  else
  {
    v4 = 0;
  }

  v28 = v4;
  v29 = v3;
  v27 = [(NSArray *)self->_leadingSwipeButtonItems hash];
  v26 = [(NSArray *)self->_trailingSwipeButtonItems hash];
  v25 = [(NSArray *)self->_punchoutOptions hash];
  v24 = [(NSString *)self->_punchoutPickerTitle hash];
  v5 = [(NSString *)self->_punchoutPickerDismissText hash];
  if (self->_canBeHidden)
  {
    v6 = 2654435761;
  }

  else
  {
    v6 = 0;
  }

  v22 = v6;
  v23 = v5;
  if (self->_hasTopPadding)
  {
    v7 = 2654435761;
  }

  else
  {
    v7 = 0;
  }

  v21 = v7;
  if (self->_hasBottomPadding)
  {
    v8 = 2654435761;
  }

  else
  {
    v8 = 0;
  }

  v9 = 2654435761 * self->_separatorStyle;
  v10 = [(NSArray *)self->_referencedCommands hash];
  if (self->_forceEnable3DTouch)
  {
    v11 = 2654435761;
  }

  else
  {
    v11 = 0;
  }

  if (self->_shouldShowInSmartDialog)
  {
    v12 = 2654435761;
  }

  else
  {
    v12 = 0;
  }

  v13 = [(_SFPBAppEntityAnnotation *)self->_appEntityAnnotation hash];
  v14 = [(NSString *)self->_emphasisSubjectId hash];
  v15 = 2654435761 * self->_increasedContrastMode;
  v16 = v12 ^ v13 ^ v14 ^ v15 ^ [(_SFPBCommand *)self->_secondaryCommand hash]^ (2654435761 * self->_requiredLevelOfDetail);
  v17 = v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v42 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v23 ^ v22 ^ v21 ^ v8 ^ v9 ^ v10 ^ v11 ^ v16 ^ [(NSString *)self->_racFeedbackSubfeatureId hash];
  v18 = [(NSDictionary *)self->_racFeedbackLoggingContent hash];
  v19 = v18 ^ [(NSArray *)self->_copyableItems hash];
  return v17 ^ v19 ^ [(NSString *)self->_applicationBundleIdentifier hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_142;
  }

  type = self->_type;
  if (type != [equalCopy type])
  {
    goto LABEL_142;
  }

  value = [(_SFPBCardSection *)self value];
  value2 = [equalCopy value];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_141;
  }

  value3 = [(_SFPBCardSection *)self value];
  if (value3)
  {
    v9 = value3;
    value4 = [(_SFPBCardSection *)self value];
    value5 = [equalCopy value];
    v12 = [value4 isEqual:value5];

    if (!v12)
    {
      goto LABEL_142;
    }
  }

  else
  {
  }

  value = [(_SFPBCardSection *)self nextCard];
  value2 = [equalCopy nextCard];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_141;
  }

  nextCard = [(_SFPBCardSection *)self nextCard];
  if (nextCard)
  {
    v14 = nextCard;
    nextCard2 = [(_SFPBCardSection *)self nextCard];
    nextCard3 = [equalCopy nextCard];
    v17 = [nextCard2 isEqual:nextCard3];

    if (!v17)
    {
      goto LABEL_142;
    }
  }

  else
  {
  }

  value = [(_SFPBCardSection *)self commands];
  value2 = [equalCopy commands];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_141;
  }

  commands = [(_SFPBCardSection *)self commands];
  if (commands)
  {
    v19 = commands;
    commands2 = [(_SFPBCardSection *)self commands];
    commands3 = [equalCopy commands];
    v22 = [commands2 isEqual:commands3];

    if (!v22)
    {
      goto LABEL_142;
    }
  }

  else
  {
  }

  value = [(_SFPBCardSection *)self parameterKeyPaths];
  value2 = [equalCopy parameterKeyPaths];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_141;
  }

  parameterKeyPaths = [(_SFPBCardSection *)self parameterKeyPaths];
  if (parameterKeyPaths)
  {
    v24 = parameterKeyPaths;
    parameterKeyPaths2 = [(_SFPBCardSection *)self parameterKeyPaths];
    parameterKeyPaths3 = [equalCopy parameterKeyPaths];
    v27 = [parameterKeyPaths2 isEqual:parameterKeyPaths3];

    if (!v27)
    {
      goto LABEL_142;
    }
  }

  else
  {
  }

  value = [(_SFPBCardSection *)self cardSectionId];
  value2 = [equalCopy cardSectionId];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_141;
  }

  cardSectionId = [(_SFPBCardSection *)self cardSectionId];
  if (cardSectionId)
  {
    v29 = cardSectionId;
    cardSectionId2 = [(_SFPBCardSection *)self cardSectionId];
    cardSectionId3 = [equalCopy cardSectionId];
    v32 = [cardSectionId2 isEqual:cardSectionId3];

    if (!v32)
    {
      goto LABEL_142;
    }
  }

  else
  {
  }

  value = [(_SFPBCardSection *)self resultIdentifier];
  value2 = [equalCopy resultIdentifier];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_141;
  }

  resultIdentifier = [(_SFPBCardSection *)self resultIdentifier];
  if (resultIdentifier)
  {
    v34 = resultIdentifier;
    resultIdentifier2 = [(_SFPBCardSection *)self resultIdentifier];
    resultIdentifier3 = [equalCopy resultIdentifier];
    v37 = [resultIdentifier2 isEqual:resultIdentifier3];

    if (!v37)
    {
      goto LABEL_142;
    }
  }

  else
  {
  }

  value = [(_SFPBCardSection *)self userReportRequest];
  value2 = [equalCopy userReportRequest];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_141;
  }

  userReportRequest = [(_SFPBCardSection *)self userReportRequest];
  if (userReportRequest)
  {
    v39 = userReportRequest;
    userReportRequest2 = [(_SFPBCardSection *)self userReportRequest];
    userReportRequest3 = [equalCopy userReportRequest];
    v42 = [userReportRequest2 isEqual:userReportRequest3];

    if (!v42)
    {
      goto LABEL_142;
    }
  }

  else
  {
  }

  value = [(_SFPBCardSection *)self command];
  value2 = [equalCopy command];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_141;
  }

  command = [(_SFPBCardSection *)self command];
  if (command)
  {
    v44 = command;
    command2 = [(_SFPBCardSection *)self command];
    command3 = [equalCopy command];
    v47 = [command2 isEqual:command3];

    if (!v47)
    {
      goto LABEL_142;
    }
  }

  else
  {
  }

  value = [(_SFPBCardSection *)self previewCommand];
  value2 = [equalCopy previewCommand];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_141;
  }

  previewCommand = [(_SFPBCardSection *)self previewCommand];
  if (previewCommand)
  {
    v49 = previewCommand;
    previewCommand2 = [(_SFPBCardSection *)self previewCommand];
    previewCommand3 = [equalCopy previewCommand];
    v52 = [previewCommand2 isEqual:previewCommand3];

    if (!v52)
    {
      goto LABEL_142;
    }
  }

  else
  {
  }

  value = [(_SFPBCardSection *)self previewButtonItems];
  value2 = [equalCopy previewButtonItems];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_141;
  }

  previewButtonItems = [(_SFPBCardSection *)self previewButtonItems];
  if (previewButtonItems)
  {
    v54 = previewButtonItems;
    previewButtonItems2 = [(_SFPBCardSection *)self previewButtonItems];
    previewButtonItems3 = [equalCopy previewButtonItems];
    v57 = [previewButtonItems2 isEqual:previewButtonItems3];

    if (!v57)
    {
      goto LABEL_142;
    }
  }

  else
  {
  }

  value = [(_SFPBCardSection *)self cardSectionDetail];
  value2 = [equalCopy cardSectionDetail];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_141;
  }

  cardSectionDetail = [(_SFPBCardSection *)self cardSectionDetail];
  if (cardSectionDetail)
  {
    v59 = cardSectionDetail;
    cardSectionDetail2 = [(_SFPBCardSection *)self cardSectionDetail];
    cardSectionDetail3 = [equalCopy cardSectionDetail];
    v62 = [cardSectionDetail2 isEqual:cardSectionDetail3];

    if (!v62)
    {
      goto LABEL_142;
    }
  }

  else
  {
  }

  value = [(_SFPBCardSection *)self previewButtonItemsTitle];
  value2 = [equalCopy previewButtonItemsTitle];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_141;
  }

  previewButtonItemsTitle = [(_SFPBCardSection *)self previewButtonItemsTitle];
  if (previewButtonItemsTitle)
  {
    v64 = previewButtonItemsTitle;
    previewButtonItemsTitle2 = [(_SFPBCardSection *)self previewButtonItemsTitle];
    previewButtonItemsTitle3 = [equalCopy previewButtonItemsTitle];
    v67 = [previewButtonItemsTitle2 isEqual:previewButtonItemsTitle3];

    if (!v67)
    {
      goto LABEL_142;
    }
  }

  else
  {
  }

  value = [(_SFPBCardSection *)self backgroundColor];
  value2 = [equalCopy backgroundColor];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_141;
  }

  backgroundColor = [(_SFPBCardSection *)self backgroundColor];
  if (backgroundColor)
  {
    v69 = backgroundColor;
    backgroundColor2 = [(_SFPBCardSection *)self backgroundColor];
    backgroundColor3 = [equalCopy backgroundColor];
    v72 = [backgroundColor2 isEqual:backgroundColor3];

    if (!v72)
    {
      goto LABEL_142;
    }
  }

  else
  {
  }

  shouldHideInAmbientMode = self->_shouldHideInAmbientMode;
  if (shouldHideInAmbientMode != [equalCopy shouldHideInAmbientMode])
  {
    goto LABEL_142;
  }

  value = [(_SFPBCardSection *)self leadingSwipeButtonItems];
  value2 = [equalCopy leadingSwipeButtonItems];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_141;
  }

  leadingSwipeButtonItems = [(_SFPBCardSection *)self leadingSwipeButtonItems];
  if (leadingSwipeButtonItems)
  {
    v75 = leadingSwipeButtonItems;
    leadingSwipeButtonItems2 = [(_SFPBCardSection *)self leadingSwipeButtonItems];
    leadingSwipeButtonItems3 = [equalCopy leadingSwipeButtonItems];
    v78 = [leadingSwipeButtonItems2 isEqual:leadingSwipeButtonItems3];

    if (!v78)
    {
      goto LABEL_142;
    }
  }

  else
  {
  }

  value = [(_SFPBCardSection *)self trailingSwipeButtonItems];
  value2 = [equalCopy trailingSwipeButtonItems];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_141;
  }

  trailingSwipeButtonItems = [(_SFPBCardSection *)self trailingSwipeButtonItems];
  if (trailingSwipeButtonItems)
  {
    v80 = trailingSwipeButtonItems;
    trailingSwipeButtonItems2 = [(_SFPBCardSection *)self trailingSwipeButtonItems];
    trailingSwipeButtonItems3 = [equalCopy trailingSwipeButtonItems];
    v83 = [trailingSwipeButtonItems2 isEqual:trailingSwipeButtonItems3];

    if (!v83)
    {
      goto LABEL_142;
    }
  }

  else
  {
  }

  value = [(_SFPBCardSection *)self punchoutOptions];
  value2 = [equalCopy punchoutOptions];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_141;
  }

  punchoutOptions = [(_SFPBCardSection *)self punchoutOptions];
  if (punchoutOptions)
  {
    v85 = punchoutOptions;
    punchoutOptions2 = [(_SFPBCardSection *)self punchoutOptions];
    punchoutOptions3 = [equalCopy punchoutOptions];
    v88 = [punchoutOptions2 isEqual:punchoutOptions3];

    if (!v88)
    {
      goto LABEL_142;
    }
  }

  else
  {
  }

  value = [(_SFPBCardSection *)self punchoutPickerTitle];
  value2 = [equalCopy punchoutPickerTitle];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_141;
  }

  punchoutPickerTitle = [(_SFPBCardSection *)self punchoutPickerTitle];
  if (punchoutPickerTitle)
  {
    v90 = punchoutPickerTitle;
    punchoutPickerTitle2 = [(_SFPBCardSection *)self punchoutPickerTitle];
    punchoutPickerTitle3 = [equalCopy punchoutPickerTitle];
    v93 = [punchoutPickerTitle2 isEqual:punchoutPickerTitle3];

    if (!v93)
    {
      goto LABEL_142;
    }
  }

  else
  {
  }

  value = [(_SFPBCardSection *)self punchoutPickerDismissText];
  value2 = [equalCopy punchoutPickerDismissText];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_141;
  }

  punchoutPickerDismissText = [(_SFPBCardSection *)self punchoutPickerDismissText];
  if (punchoutPickerDismissText)
  {
    v95 = punchoutPickerDismissText;
    punchoutPickerDismissText2 = [(_SFPBCardSection *)self punchoutPickerDismissText];
    punchoutPickerDismissText3 = [equalCopy punchoutPickerDismissText];
    v98 = [punchoutPickerDismissText2 isEqual:punchoutPickerDismissText3];

    if (!v98)
    {
      goto LABEL_142;
    }
  }

  else
  {
  }

  canBeHidden = self->_canBeHidden;
  if (canBeHidden != [equalCopy canBeHidden])
  {
    goto LABEL_142;
  }

  hasTopPadding = self->_hasTopPadding;
  if (hasTopPadding != [equalCopy hasTopPadding])
  {
    goto LABEL_142;
  }

  hasBottomPadding = self->_hasBottomPadding;
  if (hasBottomPadding != [equalCopy hasBottomPadding])
  {
    goto LABEL_142;
  }

  separatorStyle = self->_separatorStyle;
  if (separatorStyle != [equalCopy separatorStyle])
  {
    goto LABEL_142;
  }

  value = [(_SFPBCardSection *)self referencedCommands];
  value2 = [equalCopy referencedCommands];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_141;
  }

  referencedCommands = [(_SFPBCardSection *)self referencedCommands];
  if (referencedCommands)
  {
    v104 = referencedCommands;
    referencedCommands2 = [(_SFPBCardSection *)self referencedCommands];
    referencedCommands3 = [equalCopy referencedCommands];
    v107 = [referencedCommands2 isEqual:referencedCommands3];

    if (!v107)
    {
      goto LABEL_142;
    }
  }

  else
  {
  }

  forceEnable3DTouch = self->_forceEnable3DTouch;
  if (forceEnable3DTouch != [equalCopy forceEnable3DTouch])
  {
    goto LABEL_142;
  }

  shouldShowInSmartDialog = self->_shouldShowInSmartDialog;
  if (shouldShowInSmartDialog != [equalCopy shouldShowInSmartDialog])
  {
    goto LABEL_142;
  }

  value = [(_SFPBCardSection *)self appEntityAnnotation];
  value2 = [equalCopy appEntityAnnotation];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_141;
  }

  appEntityAnnotation = [(_SFPBCardSection *)self appEntityAnnotation];
  if (appEntityAnnotation)
  {
    v111 = appEntityAnnotation;
    appEntityAnnotation2 = [(_SFPBCardSection *)self appEntityAnnotation];
    appEntityAnnotation3 = [equalCopy appEntityAnnotation];
    v114 = [appEntityAnnotation2 isEqual:appEntityAnnotation3];

    if (!v114)
    {
      goto LABEL_142;
    }
  }

  else
  {
  }

  value = [(_SFPBCardSection *)self emphasisSubjectId];
  value2 = [equalCopy emphasisSubjectId];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_141;
  }

  emphasisSubjectId = [(_SFPBCardSection *)self emphasisSubjectId];
  if (emphasisSubjectId)
  {
    v116 = emphasisSubjectId;
    emphasisSubjectId2 = [(_SFPBCardSection *)self emphasisSubjectId];
    emphasisSubjectId3 = [equalCopy emphasisSubjectId];
    v119 = [emphasisSubjectId2 isEqual:emphasisSubjectId3];

    if (!v119)
    {
      goto LABEL_142;
    }
  }

  else
  {
  }

  increasedContrastMode = self->_increasedContrastMode;
  if (increasedContrastMode != [equalCopy increasedContrastMode])
  {
    goto LABEL_142;
  }

  value = [(_SFPBCardSection *)self secondaryCommand];
  value2 = [equalCopy secondaryCommand];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_141;
  }

  secondaryCommand = [(_SFPBCardSection *)self secondaryCommand];
  if (secondaryCommand)
  {
    v122 = secondaryCommand;
    secondaryCommand2 = [(_SFPBCardSection *)self secondaryCommand];
    secondaryCommand3 = [equalCopy secondaryCommand];
    v125 = [secondaryCommand2 isEqual:secondaryCommand3];

    if (!v125)
    {
      goto LABEL_142;
    }
  }

  else
  {
  }

  requiredLevelOfDetail = self->_requiredLevelOfDetail;
  if (requiredLevelOfDetail != [equalCopy requiredLevelOfDetail])
  {
    goto LABEL_142;
  }

  value = [(_SFPBCardSection *)self racFeedbackSubfeatureId];
  value2 = [equalCopy racFeedbackSubfeatureId];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_141;
  }

  racFeedbackSubfeatureId = [(_SFPBCardSection *)self racFeedbackSubfeatureId];
  if (racFeedbackSubfeatureId)
  {
    v128 = racFeedbackSubfeatureId;
    racFeedbackSubfeatureId2 = [(_SFPBCardSection *)self racFeedbackSubfeatureId];
    racFeedbackSubfeatureId3 = [equalCopy racFeedbackSubfeatureId];
    v131 = [racFeedbackSubfeatureId2 isEqual:racFeedbackSubfeatureId3];

    if (!v131)
    {
      goto LABEL_142;
    }
  }

  else
  {
  }

  value = [(_SFPBCardSection *)self racFeedbackLoggingContent];
  value2 = [equalCopy racFeedbackLoggingContent];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_141;
  }

  racFeedbackLoggingContent = [(_SFPBCardSection *)self racFeedbackLoggingContent];
  if (racFeedbackLoggingContent)
  {
    v133 = racFeedbackLoggingContent;
    racFeedbackLoggingContent2 = [(_SFPBCardSection *)self racFeedbackLoggingContent];
    racFeedbackLoggingContent3 = [equalCopy racFeedbackLoggingContent];
    v136 = [racFeedbackLoggingContent2 isEqual:racFeedbackLoggingContent3];

    if (!v136)
    {
      goto LABEL_142;
    }
  }

  else
  {
  }

  value = [(_SFPBCardSection *)self copyableItems];
  value2 = [equalCopy copyableItems];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_141;
  }

  copyableItems = [(_SFPBCardSection *)self copyableItems];
  if (copyableItems)
  {
    v138 = copyableItems;
    copyableItems2 = [(_SFPBCardSection *)self copyableItems];
    copyableItems3 = [equalCopy copyableItems];
    v141 = [copyableItems2 isEqual:copyableItems3];

    if (!v141)
    {
      goto LABEL_142;
    }
  }

  else
  {
  }

  value = [(_SFPBCardSection *)self applicationBundleIdentifier];
  value2 = [equalCopy applicationBundleIdentifier];
  if ((value != 0) == (value2 == 0))
  {
LABEL_141:

    goto LABEL_142;
  }

  applicationBundleIdentifier = [(_SFPBCardSection *)self applicationBundleIdentifier];
  if (!applicationBundleIdentifier)
  {

LABEL_145:
    v147 = 1;
    goto LABEL_143;
  }

  v143 = applicationBundleIdentifier;
  applicationBundleIdentifier2 = [(_SFPBCardSection *)self applicationBundleIdentifier];
  applicationBundleIdentifier3 = [equalCopy applicationBundleIdentifier];
  v146 = [applicationBundleIdentifier2 isEqual:applicationBundleIdentifier3];

  if (v146)
  {
    goto LABEL_145;
  }

LABEL_142:
  v147 = 0;
LABEL_143:

  return v147;
}

- (void)writeTo:(id)to
{
  v116 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if ([(_SFPBCardSection *)self type])
  {
    PBDataWriterWriteInt32Field();
  }

  value = [(_SFPBCardSection *)self value];
  if (value)
  {
    PBDataWriterWriteSubmessage();
  }

  nextCard = [(_SFPBCardSection *)self nextCard];
  if (nextCard)
  {
    PBDataWriterWriteSubmessage();
  }

  [(_SFPBCardSection *)self commands];
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v7 = v106 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v103 objects:v115 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v104;
    do
    {
      v11 = 0;
      do
      {
        if (*v104 != v10)
        {
          objc_enumerationMutation(v7);
        }

        PBDataWriterWriteSubmessage();
        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v103 objects:v115 count:16];
    }

    while (v9);
  }

  [(_SFPBCardSection *)self parameterKeyPaths];
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v12 = v102 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v99 objects:v114 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v100;
    do
    {
      v16 = 0;
      do
      {
        if (*v100 != v15)
        {
          objc_enumerationMutation(v12);
        }

        PBDataWriterWriteStringField();
        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v99 objects:v114 count:16];
    }

    while (v14);
  }

  cardSectionId = [(_SFPBCardSection *)self cardSectionId];
  if (cardSectionId)
  {
    PBDataWriterWriteStringField();
  }

  resultIdentifier = [(_SFPBCardSection *)self resultIdentifier];
  if (resultIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  userReportRequest = [(_SFPBCardSection *)self userReportRequest];
  if (userReportRequest)
  {
    PBDataWriterWriteSubmessage();
  }

  command = [(_SFPBCardSection *)self command];
  if (command)
  {
    PBDataWriterWriteSubmessage();
  }

  previewCommand = [(_SFPBCardSection *)self previewCommand];
  if (previewCommand)
  {
    PBDataWriterWriteSubmessage();
  }

  [(_SFPBCardSection *)self previewButtonItems];
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v22 = v98 = 0u;
  v23 = [v22 countByEnumeratingWithState:&v95 objects:v113 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v96;
    do
    {
      v26 = 0;
      do
      {
        if (*v96 != v25)
        {
          objc_enumerationMutation(v22);
        }

        PBDataWriterWriteSubmessage();
        ++v26;
      }

      while (v24 != v26);
      v24 = [v22 countByEnumeratingWithState:&v95 objects:v113 count:16];
    }

    while (v24);
  }

  cardSectionDetail = [(_SFPBCardSection *)self cardSectionDetail];
  if (cardSectionDetail)
  {
    PBDataWriterWriteStringField();
  }

  previewButtonItemsTitle = [(_SFPBCardSection *)self previewButtonItemsTitle];
  if (previewButtonItemsTitle)
  {
    PBDataWriterWriteStringField();
  }

  backgroundColor = [(_SFPBCardSection *)self backgroundColor];
  if (backgroundColor)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBCardSection *)self shouldHideInAmbientMode])
  {
    PBDataWriterWriteBOOLField();
  }

  [(_SFPBCardSection *)self leadingSwipeButtonItems];
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v30 = v94 = 0u;
  v31 = [v30 countByEnumeratingWithState:&v91 objects:v112 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v92;
    do
    {
      v34 = 0;
      do
      {
        if (*v92 != v33)
        {
          objc_enumerationMutation(v30);
        }

        PBDataWriterWriteSubmessage();
        ++v34;
      }

      while (v32 != v34);
      v32 = [v30 countByEnumeratingWithState:&v91 objects:v112 count:16];
    }

    while (v32);
  }

  [(_SFPBCardSection *)self trailingSwipeButtonItems];
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v35 = v90 = 0u;
  v36 = [v35 countByEnumeratingWithState:&v87 objects:v111 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v88;
    do
    {
      v39 = 0;
      do
      {
        if (*v88 != v38)
        {
          objc_enumerationMutation(v35);
        }

        PBDataWriterWriteSubmessage();
        ++v39;
      }

      while (v37 != v39);
      v37 = [v35 countByEnumeratingWithState:&v87 objects:v111 count:16];
    }

    while (v37);
  }

  [(_SFPBCardSection *)self punchoutOptions];
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v40 = v86 = 0u;
  v41 = [v40 countByEnumeratingWithState:&v83 objects:v110 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v84;
    do
    {
      v44 = 0;
      do
      {
        if (*v84 != v43)
        {
          objc_enumerationMutation(v40);
        }

        PBDataWriterWriteSubmessage();
        ++v44;
      }

      while (v42 != v44);
      v42 = [v40 countByEnumeratingWithState:&v83 objects:v110 count:16];
    }

    while (v42);
  }

  punchoutPickerTitle = [(_SFPBCardSection *)self punchoutPickerTitle];
  if (punchoutPickerTitle)
  {
    PBDataWriterWriteStringField();
  }

  punchoutPickerDismissText = [(_SFPBCardSection *)self punchoutPickerDismissText];
  if (punchoutPickerDismissText)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBCardSection *)self canBeHidden])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBCardSection *)self hasTopPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBCardSection *)self hasBottomPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBCardSection *)self separatorStyle])
  {
    PBDataWriterWriteInt32Field();
  }

  [(_SFPBCardSection *)self referencedCommands];
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v47 = v82 = 0u;
  v48 = [v47 countByEnumeratingWithState:&v79 objects:v109 count:16];
  if (v48)
  {
    v49 = v48;
    v50 = *v80;
    do
    {
      v51 = 0;
      do
      {
        if (*v80 != v50)
        {
          objc_enumerationMutation(v47);
        }

        PBDataWriterWriteSubmessage();
        ++v51;
      }

      while (v49 != v51);
      v49 = [v47 countByEnumeratingWithState:&v79 objects:v109 count:16];
    }

    while (v49);
  }

  if ([(_SFPBCardSection *)self forceEnable3DTouch])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBCardSection *)self shouldShowInSmartDialog])
  {
    PBDataWriterWriteBOOLField();
  }

  appEntityAnnotation = [(_SFPBCardSection *)self appEntityAnnotation];
  if (appEntityAnnotation)
  {
    PBDataWriterWriteSubmessage();
  }

  emphasisSubjectId = [(_SFPBCardSection *)self emphasisSubjectId];
  if (emphasisSubjectId)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBCardSection *)self increasedContrastMode])
  {
    PBDataWriterWriteInt32Field();
  }

  secondaryCommand = [(_SFPBCardSection *)self secondaryCommand];
  if (secondaryCommand)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBCardSection *)self requiredLevelOfDetail])
  {
    PBDataWriterWriteInt32Field();
  }

  racFeedbackSubfeatureId = [(_SFPBCardSection *)self racFeedbackSubfeatureId];
  if (racFeedbackSubfeatureId)
  {
    PBDataWriterWriteStringField();
  }

  racFeedbackLoggingContent = [(_SFPBCardSection *)self racFeedbackLoggingContent];
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v57 = self->_racFeedbackLoggingContent;
  v58 = [(NSDictionary *)v57 countByEnumeratingWithState:&v75 objects:v108 count:16];
  if (v58)
  {
    v59 = v58;
    v60 = *v76;
    do
    {
      v61 = 0;
      do
      {
        if (*v76 != v60)
        {
          objc_enumerationMutation(v57);
        }

        v62 = *(*(&v75 + 1) + 8 * v61);
        v74 = 0;
        PBDataWriterPlaceMark();
        PBDataWriterWriteStringField();
        v63 = [(NSDictionary *)self->_racFeedbackLoggingContent objectForKeyedSubscript:v62];
        PBDataWriterWriteStringField();

        PBDataWriterRecallMark();
        ++v61;
      }

      while (v59 != v61);
      v59 = [(NSDictionary *)v57 countByEnumeratingWithState:&v75 objects:v108 count:16];
    }

    while (v59);
  }

  [(_SFPBCardSection *)self copyableItems];
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v64 = v73 = 0u;
  v65 = [v64 countByEnumeratingWithState:&v70 objects:v107 count:16];
  if (v65)
  {
    v66 = v65;
    v67 = *v71;
    do
    {
      v68 = 0;
      do
      {
        if (*v71 != v67)
        {
          objc_enumerationMutation(v64);
        }

        PBDataWriterWriteSubmessage();
        ++v68;
      }

      while (v66 != v68);
      v66 = [v64 countByEnumeratingWithState:&v70 objects:v107 count:16];
    }

    while (v66);
  }

  applicationBundleIdentifier = [(_SFPBCardSection *)self applicationBundleIdentifier];
  if (applicationBundleIdentifier)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)setApplicationBundleIdentifier:(id)identifier
{
  self->_applicationBundleIdentifier = [identifier copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)addCopyableItems:(id)items
{
  itemsCopy = items;
  copyableItems = self->_copyableItems;
  v8 = itemsCopy;
  if (!copyableItems)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_copyableItems;
    self->_copyableItems = array;

    itemsCopy = v8;
    copyableItems = self->_copyableItems;
  }

  [(NSArray *)copyableItems addObject:itemsCopy];
}

- (void)setCopyableItems:(id)items
{
  self->_copyableItems = [items copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setRacFeedbackLoggingContent:(id)content forKey:(id)key
{
  contentCopy = content;
  keyCopy = key;
  racFeedbackLoggingContent = self->_racFeedbackLoggingContent;
  if (!racFeedbackLoggingContent)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v9 = self->_racFeedbackLoggingContent;
    self->_racFeedbackLoggingContent = dictionary;

    racFeedbackLoggingContent = self->_racFeedbackLoggingContent;
  }

  [(NSDictionary *)racFeedbackLoggingContent setObject:contentCopy forKey:keyCopy];
}

- (BOOL)getRacFeedbackLoggingContent:(id *)content forKey:(id)key
{
  v5 = [(NSDictionary *)self->_racFeedbackLoggingContent objectForKeyedSubscript:key];
  if (content && v5)
  {
    v5 = v5;
    *content = v5;
  }

  v6 = v5 != 0;

  return v6;
}

- (void)setRacFeedbackLoggingContent:(id)content
{
  self->_racFeedbackLoggingContent = [content copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setRacFeedbackSubfeatureId:(id)id
{
  self->_racFeedbackSubfeatureId = [id copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setEmphasisSubjectId:(id)id
{
  self->_emphasisSubjectId = [id copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)addReferencedCommands:(id)commands
{
  commandsCopy = commands;
  referencedCommands = self->_referencedCommands;
  v8 = commandsCopy;
  if (!referencedCommands)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_referencedCommands;
    self->_referencedCommands = array;

    commandsCopy = v8;
    referencedCommands = self->_referencedCommands;
  }

  [(NSArray *)referencedCommands addObject:commandsCopy];
}

- (void)setReferencedCommands:(id)commands
{
  self->_referencedCommands = [commands copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setPunchoutPickerDismissText:(id)text
{
  self->_punchoutPickerDismissText = [text copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setPunchoutPickerTitle:(id)title
{
  self->_punchoutPickerTitle = [title copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)addPunchoutOptions:(id)options
{
  optionsCopy = options;
  punchoutOptions = self->_punchoutOptions;
  v8 = optionsCopy;
  if (!punchoutOptions)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_punchoutOptions;
    self->_punchoutOptions = array;

    optionsCopy = v8;
    punchoutOptions = self->_punchoutOptions;
  }

  [(NSArray *)punchoutOptions addObject:optionsCopy];
}

- (void)setPunchoutOptions:(id)options
{
  self->_punchoutOptions = [options copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)addTrailingSwipeButtonItems:(id)items
{
  itemsCopy = items;
  trailingSwipeButtonItems = self->_trailingSwipeButtonItems;
  v8 = itemsCopy;
  if (!trailingSwipeButtonItems)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_trailingSwipeButtonItems;
    self->_trailingSwipeButtonItems = array;

    itemsCopy = v8;
    trailingSwipeButtonItems = self->_trailingSwipeButtonItems;
  }

  [(NSArray *)trailingSwipeButtonItems addObject:itemsCopy];
}

- (void)setTrailingSwipeButtonItems:(id)items
{
  self->_trailingSwipeButtonItems = [items copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)addLeadingSwipeButtonItems:(id)items
{
  itemsCopy = items;
  leadingSwipeButtonItems = self->_leadingSwipeButtonItems;
  v8 = itemsCopy;
  if (!leadingSwipeButtonItems)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_leadingSwipeButtonItems;
    self->_leadingSwipeButtonItems = array;

    itemsCopy = v8;
    leadingSwipeButtonItems = self->_leadingSwipeButtonItems;
  }

  [(NSArray *)leadingSwipeButtonItems addObject:itemsCopy];
}

- (void)setLeadingSwipeButtonItems:(id)items
{
  self->_leadingSwipeButtonItems = [items copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setPreviewButtonItemsTitle:(id)title
{
  self->_previewButtonItemsTitle = [title copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setCardSectionDetail:(id)detail
{
  self->_cardSectionDetail = [detail copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)addPreviewButtonItems:(id)items
{
  itemsCopy = items;
  previewButtonItems = self->_previewButtonItems;
  v8 = itemsCopy;
  if (!previewButtonItems)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_previewButtonItems;
    self->_previewButtonItems = array;

    itemsCopy = v8;
    previewButtonItems = self->_previewButtonItems;
  }

  [(NSArray *)previewButtonItems addObject:itemsCopy];
}

- (void)setPreviewButtonItems:(id)items
{
  self->_previewButtonItems = [items copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setResultIdentifier:(id)identifier
{
  self->_resultIdentifier = [identifier copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setCardSectionId:(id)id
{
  self->_cardSectionId = [id copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)addParameterKeyPaths:(id)paths
{
  pathsCopy = paths;
  parameterKeyPaths = self->_parameterKeyPaths;
  v8 = pathsCopy;
  if (!parameterKeyPaths)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_parameterKeyPaths;
    self->_parameterKeyPaths = array;

    pathsCopy = v8;
    parameterKeyPaths = self->_parameterKeyPaths;
  }

  [(NSArray *)parameterKeyPaths addObject:pathsCopy];
}

- (void)setParameterKeyPaths:(id)paths
{
  self->_parameterKeyPaths = [paths copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)addCommands:(id)commands
{
  commandsCopy = commands;
  commands = self->_commands;
  v8 = commandsCopy;
  if (!commands)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_commands;
    self->_commands = array;

    commandsCopy = v8;
    commands = self->_commands;
  }

  [(NSArray *)commands addObject:commandsCopy];
}

- (void)setCommands:(id)commands
{
  self->_commands = [commands copy];

  MEMORY[0x1EEE66BB8]();
}

@end