@interface KNAppDelegateBase
+ (KNAppPropertiesProvider)kn_sharedPropertiesProvider;
- (BOOL)isValidURLForImportedHyperlink:(id)hyperlink targetDocumentRoot:(id)root forCrossDocumentPaste:(BOOL)paste;
- (KNAppDelegateBase)init;
- (id)createCompatibilityDelegate;
- (id)universalPreviewImageNameForDocumentType:(id)type;
- (void)registerAllowedElementKinds;
- (void)registerClassTypeMappings;
- (void)registerDrawableInfoClassMapping;
- (void)registerSOSClassTypeMappings;
@end

@implementation KNAppDelegateBase

- (KNAppDelegateBase)init
{
  v6.receiver = self;
  v6.super_class = KNAppDelegateBase;
  v2 = [(TSABaseApplicationDelegate *)&v6 init];
  if (v2)
  {
    [objc_opt_class() resetSharedConfigurations];
    [(KNAppDelegateBase *)v2 registerClassTypeMappings];
    [(KNAppDelegateBase *)v2 registerSOSClassTypeMappings];
    [(KNAppDelegateBase *)v2 registerAllowedElementKinds];
    mEMORY[0x277D80D00] = [MEMORY[0x277D80D00] sharedTableConfiguration];
    [mEMORY[0x277D80D00] setSupportsContainedTextEditing:1];
    [mEMORY[0x277D80D00] setSupportsControlCells:0];
    [mEMORY[0x277D80D00] setHasLargerFonts:1];
    [mEMORY[0x277D80D00] setMaxNumberOfRows:999];
    [mEMORY[0x277D80D00] setMaxNumberOfColumns:65];
    [mEMORY[0x277D80D00] setShowsHideUnhideUI:0];
    [mEMORY[0x277D80D00] setExportPermanentHidingState:1];
    [mEMORY[0x277D80D00] setPasteFilterHidingAsUserHiding:1];
    [mEMORY[0x277D80D00] setAllowsFullyFilteredTables:0];
    [mEMORY[0x277D80D00] setCellEditorsCanScrollToNonLocalTableSelection:0];
    [mEMORY[0x277D80D00] setSupportsPlaceholderGeometry:1];
    [mEMORY[0x277D80D00] setStructuredTextImportConfidenceThresholdForCanvas:0.75];
    [mEMORY[0x277D80D00] setSupportsDynamicallyHidingRowColumnForDragDrop:1];
    [mEMORY[0x277D80D00] setSupportsHDRRendering:1];
    v4 = v2;
  }

  return v2;
}

+ (KNAppPropertiesProvider)kn_sharedPropertiesProvider
{
  objc_opt_class();
  sharedPropertiesProvider = [self sharedPropertiesProvider];
  v4 = TSUCheckedDynamicCast();

  return v4;
}

- (id)createCompatibilityDelegate
{
  v2 = objc_alloc_init(KNQuicklookCompatibilityDelegate);

  return v2;
}

- (void)registerDrawableInfoClassMapping
{
  v2.receiver = self;
  v2.super_class = KNAppDelegateBase;
  [(TSABaseApplicationDelegate *)&v2 registerDrawableInfoClassMapping];
  [MEMORY[0x277D80220] registerClassForUnarchiving:objc_opt_class()];
}

- (id)universalPreviewImageNameForDocumentType:(id)type
{
  v11[2] = *MEMORY[0x277D85DE8];
  typeCopy = type;
  v11[0] = @"com.apple.iwork.keynote.kth";
  v11[1] = @"com.apple.iwork.keynote.sffkth";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  v5 = [typeCopy tsu_conformsToAnyUTI:v4];

  if (v5)
  {
    v6 = @"doc_manager_template";
  }

  else
  {
    kn_sharedPropertiesProvider = [objc_opt_class() kn_sharedPropertiesProvider];
    powerPointDocumentTypes = [kn_sharedPropertiesProvider powerPointDocumentTypes];
    v9 = [typeCopy tsu_conformsToAnyUTI:powerPointDocumentTypes];

    if (v9)
    {
      v6 = @"doc_manager_keynote_ppt_landscape";
    }

    else
    {
      v6 = @"doc_manager_keynote_classic_landscape";
    }
  }

  return v6;
}

- (void)registerSOSClassTypeMappings
{
  v2.receiver = self;
  v2.super_class = KNAppDelegateBase;
  [(TSABaseApplicationDelegate *)&v2 registerSOSClassTypeMappings];
}

- (void)registerClassTypeMappings
{
  mEMORY[0x277D80880] = [MEMORY[0x277D80880] sharedRegistry];
  sub_275DAB56C(mEMORY[0x277D80880], mEMORY[0x277D80880]);

  mEMORY[0x277D80AB0] = [MEMORY[0x277D80AB0] sharedRegistry];
  sub_275DABB70(mEMORY[0x277D80AB0], mEMORY[0x277D80AB0]);
}

- (void)registerAllowedElementKinds
{
  for (i = 0; i != 9; ++i)
  {
    if (i != 6)
    {
      if (i == 4)
      {
        [MEMORY[0x277D80F28] setDisallowedElementKinds:785903 forStorageKind:4];
        v3 = MEMORY[0x277D80F28];
        v4 = 2437;
        v5 = 4;
      }

      else if (i == 3)
      {
        [MEMORY[0x277D80F28] setDisallowedElementKinds:708044 forStorageKind:3];
        v3 = MEMORY[0x277D80F28];
        v4 = 133;
        v5 = 3;
      }

      else
      {
        [MEMORY[0x277D80F28] setDisallowedElementKinds:785903 forStorageKind:i];
        v3 = MEMORY[0x277D80F28];
        v5 = i;
        v4 = 133;
      }

      [v3 setDisallowedSmartFieldKinds:v4 forStorageKind:v5];
    }
  }
}

- (BOOL)isValidURLForImportedHyperlink:(id)hyperlink targetDocumentRoot:(id)root forCrossDocumentPaste:(BOOL)paste
{
  pasteCopy = paste;
  hyperlinkCopy = hyperlink;
  rootCopy = root;
  v12.receiver = self;
  v12.super_class = KNAppDelegateBase;
  v10 = [(TSWPApplicationDelegate *)&v12 isValidURLForImportedHyperlink:hyperlinkCopy targetDocumentRoot:rootCopy forCrossDocumentPaste:pasteCopy]|| [KNHyperlinkController URLContainsKeynoteSpecificHyperlink:hyperlinkCopy];

  return v10;
}

@end