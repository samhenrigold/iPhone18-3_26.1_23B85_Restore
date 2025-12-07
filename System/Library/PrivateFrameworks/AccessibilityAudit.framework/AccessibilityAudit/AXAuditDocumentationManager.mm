@interface AXAuditDocumentationManager
+ (id)_appleDocViewerURLForWebDocURL:(id)l;
+ (id)_docTypeCatalystDictionary;
+ (id)_docTypeDictionary;
+ (id)_getOriginaliOSTitle:(id)title;
+ (id)_macOSToiOSTitleDictionary;
+ (id)appleDocURLForType:(int64_t)type;
+ (id)appleDocViewerURLs;
+ (id)sharedManager;
+ (id)webDocURLForType:(int64_t)type;
+ (id)webpageURLs;
+ (int64_t)getAXDocumentationType:(id)type isCatalyst:(BOOL)catalyst;
@end

@implementation AXAuditDocumentationManager

+ (id)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__AXAuditDocumentationManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedManager_onceToken_5 != -1)
  {
    dispatch_once(&sharedManager_onceToken_5, block);
  }

  v2 = sharedManager_instance_5;

  return v2;
}

uint64_t __44__AXAuditDocumentationManager_sharedManager__block_invoke(uint64_t a1)
{
  sharedManager_instance_5 = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

+ (id)webpageURLs
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__AXAuditDocumentationManager_webpageURLs__block_invoke;
  block[3] = &unk_278BE2CD0;
  v6 = @"https://developer.apple.com";
  if (webpageURLs_once != -1)
  {
    dispatch_once(&webpageURLs_once, block);
  }

  v2 = webpageURLs_returnValue;
  v3 = webpageURLs_returnValue;

  return v2;
}

void __42__AXAuditDocumentationManager_webpageURLs__block_invoke(uint64_t a1)
{
  v51[46] = *MEMORY[0x277D85DE8];
  v50[0] = &unk_284FC3E50;
  v49 = [*(a1 + 32) stringByAppendingString:@"/documentation/appkit/nsaccessibilityprotocol/accessibilitylabel()"];
  v51[0] = v49;
  v50[1] = &unk_284FC3E68;
  v48 = [*(a1 + 32) stringByAppendingString:@"/documentation/appkit/nsaccessibilityprotocol/accessibilitytitle()"];
  v51[1] = v48;
  v50[2] = &unk_284FC3E80;
  v47 = [*(a1 + 32) stringByAppendingString:@"/documentation/appkit/nsaccessibilityprotocol/accessibilityvalue()"];
  v51[2] = v47;
  v50[3] = &unk_284FC3E98;
  v46 = [*(a1 + 32) stringByAppendingString:@"/documentation/appkit/nsaccessibilityprotocol/accessibilityroledescription()"];
  v51[3] = v46;
  v50[4] = &unk_284FC3EB0;
  v45 = [*(a1 + 32) stringByAppendingString:@"/documentation/appkit/nsaccessibilityprotocol/accessibilitychildren()"];
  v51[4] = v45;
  v50[5] = &unk_284FC3EC8;
  v44 = [*(a1 + 32) stringByAppendingString:@"/documentation/appkit/nsaccessibilityprotocol/accessibilitychildreninnavigationorder()"];
  v51[5] = v44;
  v50[6] = &unk_284FC3EE0;
  v43 = [*(a1 + 32) stringByAppendingString:@"/documentation/appkit/nsaccessibilityprotocol/accessibilityextrasmenubar()"];
  v51[6] = v43;
  v50[7] = &unk_284FC3EF8;
  v42 = [*(a1 + 32) stringByAppendingString:@"/documentation/appkit/nsaccessibilitylayoutarea/accessibilityfocuseduielement"];
  v51[7] = v42;
  v50[8] = &unk_284FC3F10;
  v41 = [*(a1 + 32) stringByAppendingString:@"/documentation/appkit/nsaccessibilityprotocol/accessibilityfocusedwindow()"];
  v51[8] = v41;
  v50[9] = &unk_284FC3F28;
  v40 = [*(a1 + 32) stringByAppendingString:@"/documentation/appkit/nsaccessibilityprotocol/isaccessibilityfrontmost()"];
  v51[9] = v40;
  v50[10] = &unk_284FC3F40;
  v39 = [*(a1 + 32) stringByAppendingString:@"/documentation/appkit/nsaccessibility/attribute/1530325-topleveluielement"];
  v51[10] = v39;
  v50[11] = &unk_284FC3F58;
  v38 = [*(a1 + 32) stringByAppendingString:@"/documentation/appkit/nsaccessibilityprotocol/isaccessibilityhidden()"];
  v51[11] = v38;
  v50[12] = &unk_284FC3F70;
  v37 = [*(a1 + 32) stringByAppendingString:@"/documentation/appkit/nsaccessibilityprotocol/accessibilitymainwindow()"];
  v51[12] = v37;
  v50[13] = &unk_284FC3F88;
  v36 = [*(a1 + 32) stringByAppendingString:@"/documentation/appkit/nsaccessibilityprotocol/accessibilitymenubar()"];
  v51[13] = v36;
  v50[14] = &unk_284FC3FA0;
  v35 = [*(a1 + 32) stringByAppendingString:@"/documentation/appkit/nsaccessibilityprotocol/accessibilityrole()"];
  v51[14] = v35;
  v50[15] = &unk_284FC3FB8;
  v34 = [*(a1 + 32) stringByAppendingString:@"/documentation/appkit/nsaccessibilityprotocol/accessibilitywindows()"];
  v51[15] = v34;
  v50[16] = &unk_284FC3FD0;
  v33 = [*(a1 + 32) stringByAppendingString:@"/documentation/objectivec/nsobject/1411337-classname"];
  v51[16] = v33;
  v50[17] = &unk_284FC3FE8;
  v32 = [*(a1 + 32) stringByAppendingString:@"/documentation/appkit/nsaccessibilityprotocol/accessibilityperformshowmenu()"];
  v51[17] = v32;
  v50[18] = &unk_284FC4000;
  v31 = [*(a1 + 32) stringByAppendingString:@"/documentation/appkit/nsaccessibilityprotocol/accessibilityperformpress()"];
  v51[18] = v31;
  v50[19] = &unk_284FC4018;
  v30 = [*(a1 + 32) stringByAppendingString:@"/documentation/appkit/nsaccessibilitypositionattribute"];
  v51[19] = v30;
  v50[20] = &unk_284FC4030;
  v29 = [*(a1 + 32) stringByAppendingString:@"/documentation/appkit/nsaccessibilitysizeattribute"];
  v51[20] = v29;
  v50[21] = &unk_284FC4048;
  v28 = [*(a1 + 32) stringByAppendingString:@"/documentation/appkit/nsaccessibilityprotocol/accessibilityparent()"];
  v51[21] = v28;
  v50[22] = &unk_284FC4060;
  v27 = [*(a1 + 32) stringByAppendingString:@"/documentation/appkit/nsaccessibilityprotocol/accessibilityhelp()"];
  v51[22] = v27;
  v50[23] = &unk_284FC4078;
  v26 = [*(a1 + 32) stringByAppendingString:@"/documentation/appkit/nsaccessibilityprotocol/accessibilityframe()"];
  v51[23] = v26;
  v50[24] = &unk_284FC4090;
  v25 = [*(a1 + 32) stringByAppendingString:@"/documentation/appkit/nsaccessibilityprotocol/isaccessibilityfocused()"];
  v51[24] = v25;
  v50[25] = &unk_284FC40A8;
  v24 = [*(a1 + 32) stringByAppendingString:@"/documentation/appkit/nsaccessibilityprotocol/isaccessibilityenabled()"];
  v51[25] = v24;
  v50[26] = &unk_284FC40C0;
  v23 = [*(a1 + 32) stringByAppendingString:@"/documentation/appkit/nsaccessibilityprotocol/accessibilityactivationpoint()"];
  v51[26] = v23;
  v50[27] = &unk_284FC40D8;
  v22 = [*(a1 + 32) stringByAppendingString:@"/documentation/appkit/nsaccessibilityprotocol/accessibilitywindow()"];
  v51[27] = v22;
  v50[28] = &unk_284FC40F0;
  v21 = [*(a1 + 32) stringByAppendingString:@"/documentation/appkit/nsaccessibilityprotocol/accessibilityurl()"];
  v51[28] = v21;
  v50[29] = &unk_284FC4108;
  v20 = [*(a1 + 32) stringByAppendingString:@"/documentation/appkit/nsaccessibilityprotocol/accessibilitytopleveluielement()"];
  v51[29] = v20;
  v50[30] = &unk_284FC4120;
  v19 = [*(a1 + 32) stringByAppendingString:@"/documentation/appkit/nsaccessibilityprotocol/accessibilitysubrole()"];
  v51[30] = v19;
  v50[31] = &unk_284FC4138;
  v18 = [*(a1 + 32) stringByAppendingString:@"/documentation/uikit/uiaccessibilityelement/1619577-accessibilitylabel"];
  v51[31] = v18;
  v50[32] = &unk_284FC4150;
  v17 = [*(a1 + 32) stringByAppendingString:@"/documentation/uikit/uiaccessibilityelement/1619583-accessibilityvalue"];
  v51[32] = v17;
  v50[33] = &unk_284FC4168;
  v16 = [*(a1 + 32) stringByAppendingString:@"/documentation/uikit/uiaccessibilityelement/1619584-accessibilitytraits"];
  v51[33] = v16;
  v50[34] = &unk_284FC4180;
  v15 = [*(a1 + 32) stringByAppendingString:@"/documentation/uikit/uiaccessibilityidentification"];
  v51[34] = v15;
  v50[35] = &unk_284FC4198;
  v14 = [*(a1 + 32) stringByAppendingString:@"/documentation/objectivec/nsobject/uiaccessibilityaction"];
  v51[35] = v14;
  v50[36] = &unk_284FC41B0;
  v2 = [*(a1 + 32) stringByAppendingString:@"/documentation/objectivec/nsobject/1615093-accessibilityhint"];
  v51[36] = v2;
  v50[37] = &unk_284FC41C8;
  v3 = [*(a1 + 32) stringByAppendingString:@"/documentation/objectivec/nsobject/3197989-accessibilityuserinputlabels"];
  v51[37] = v3;
  v50[38] = &unk_284FC41E0;
  v4 = [*(a1 + 32) stringByAppendingString:@"/documentation/objectivec/nsobject/1615165-accessibilityactivate"];
  v51[38] = v4;
  v50[39] = &unk_284FC41F8;
  v5 = [*(a1 + 32) stringByAppendingString:@"/documentation/objectivec/nsobject/1615076-accessibilityincrement"];
  v51[39] = v5;
  v50[40] = &unk_284FC4210;
  v6 = [*(a1 + 32) stringByAppendingString:@"/documentation/objectivec/nsobject/1615169-accessibilitydecrement"];
  v51[40] = v6;
  v50[41] = &unk_284FC4228;
  v7 = [*(a1 + 32) stringByAppendingString:@"/documentation/objectivec/nsobject/1615161-accessibilityscroll"];
  v51[41] = v7;
  v50[42] = &unk_284FC4240;
  v8 = [*(a1 + 32) stringByAppendingString:@"/documentation/objectivec/nsobject/1615202-accessibilitytraits"];
  v51[42] = v8;
  v50[43] = &unk_284FC4258;
  v9 = [*(a1 + 32) stringByAppendingString:@"/documentation/uikit/uiaccessibility/uiaccessibilitycontainertype"];
  v51[43] = v9;
  v50[44] = &unk_284FC4270;
  v10 = [*(a1 + 32) stringByAppendingString:@"/documentation/objectivec/nsobject/1615181-accessibilitylabel"];
  v51[44] = v10;
  v50[45] = &unk_284FC4288;
  v11 = [*(a1 + 32) stringByAppendingString:@"/documentation/objectivec/nsobject/1615117-accessibilityvalue"];
  v51[45] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:46];
  v13 = webpageURLs_returnValue;
  webpageURLs_returnValue = v12;
}

+ (id)appleDocViewerURLs
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__AXAuditDocumentationManager_appleDocViewerURLs__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (appleDocViewerURLs_once != -1)
  {
    dispatch_once(&appleDocViewerURLs_once, block);
  }

  return 0;
}

void __49__AXAuditDocumentationManager_appleDocViewerURLs__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = [*(a1 + 32) webpageURLs];
  v2 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v14;
    do
    {
      v5 = 0;
      do
      {
        if (*v14 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v13 + 1) + 8 * v5);
        v7 = [*(a1 + 32) webpageURLs];
        v8 = [v7 objectForKey:v6];

        v9 = [MEMORY[0x277CBEBC0] URLWithString:v8];
        if (v9)
        {
          v10 = [*(a1 + 32) _appleDocViewerURLForWebDocURL:v9];
          v11 = [v10 absoluteString];
          if (v11)
          {
            [0 setObject:v11 forKey:v6];
          }
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v3);
  }
}

+ (id)appleDocURLForType:(int64_t)type
{
  v3 = [objc_opt_class() webDocURLForType:type];
  if (v3)
  {
    v4 = [objc_opt_class() _appleDocViewerURLForWebDocURL:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_appleDocViewerURLForWebDocURL:(id)l
{
  if (l)
  {
    absoluteString = [l absoluteString];
    v4 = [absoluteString stringByReplacingOccurrencesOfString:@"/" withString:@"%252F"];

    v5 = [v4 stringByReplacingOccurrencesOfString:@"https:%252F%252Fdeveloper.apple.com" withString:@"x-xcode-documentation:/apple-built-in/doc%253A%252F%252Fcom.apple.documentation"];

    v6 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)webDocURLForType:(int64_t)type
{
  webpageURLs = [self webpageURLs];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:type];
  v6 = [webpageURLs objectForKey:v5];

  v7 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v6];

  return v7;
}

+ (id)_getOriginaliOSTitle:(id)title
{
  titleCopy = title;
  _macOSToiOSTitleDictionary = [self _macOSToiOSTitleDictionary];
  v6 = [_macOSToiOSTitleDictionary objectForKeyedSubscript:titleCopy];

  if (v6)
  {
    v7 = [_macOSToiOSTitleDictionary objectForKeyedSubscript:titleCopy];
  }

  else
  {
    v7 = titleCopy;
  }

  v8 = v7;

  return v8;
}

+ (int64_t)getAXDocumentationType:(id)type isCatalyst:(BOOL)catalyst
{
  catalystCopy = catalyst;
  typeCopy = type;
  if (catalystCopy)
  {
    v7 = [objc_opt_class() _getOriginaliOSTitle:typeCopy];

    _docTypeCatalystDictionary = [self _docTypeCatalystDictionary];
    v9 = [_docTypeCatalystDictionary objectForKeyedSubscript:v7];
    typeCopy = v7;
  }

  else
  {
    _docTypeCatalystDictionary = [self _docTypeDictionary];
    v10 = [_docTypeCatalystDictionary objectForKeyedSubscript:typeCopy];

    if (!v10)
    {
      intValue = 0;
      goto LABEL_6;
    }

    v9 = [_docTypeCatalystDictionary objectForKeyedSubscript:typeCopy];
  }

  intValue = [v9 intValue];

LABEL_6:
  return intValue;
}

+ (id)_macOSToiOSTitleDictionary
{
  if (_macOSToiOSTitleDictionary_once != -1)
  {
    +[AXAuditDocumentationManager _macOSToiOSTitleDictionary];
  }

  v3 = _macOSToiOSTitleDictionary_macOSToiOSTitleDictionary;

  return v3;
}

void __57__AXAuditDocumentationManager__macOSToiOSTitleDictionary__block_invoke()
{
  v0 = _macOSToiOSTitleDictionary_macOSToiOSTitleDictionary;
  _macOSToiOSTitleDictionary_macOSToiOSTitleDictionary = &unk_284FC4348;
}

+ (id)_docTypeCatalystDictionary
{
  if (_docTypeCatalystDictionary_once != -1)
  {
    +[AXAuditDocumentationManager _docTypeCatalystDictionary];
  }

  v3 = _docTypeCatalystDictionary_docTypeCatalystDictionary;

  return v3;
}

void __57__AXAuditDocumentationManager__docTypeCatalystDictionary__block_invoke()
{
  v0 = _docTypeCatalystDictionary_docTypeCatalystDictionary;
  _docTypeCatalystDictionary_docTypeCatalystDictionary = &unk_284FC4370;
}

+ (id)_docTypeDictionary
{
  if (_docTypeDictionary_once != -1)
  {
    +[AXAuditDocumentationManager _docTypeDictionary];
  }

  v3 = _docTypeDictionary_docTypeDictionary;

  return v3;
}

void __49__AXAuditDocumentationManager__docTypeDictionary__block_invoke()
{
  v0 = _docTypeDictionary_docTypeDictionary;
  _docTypeDictionary_docTypeDictionary = &unk_284FC4398;
}

@end