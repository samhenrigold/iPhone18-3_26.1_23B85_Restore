@interface TPDocumentRoot
+ (CGSize)pageSizeFromPaperSize:(CGSize)size pageScale:(double)scale orientation:(int64_t)orientation;
+ (CGSize)previewImageSizeForType:(unint64_t)type;
+ (void)localizeModelObject:(id)object withTemplateBundle:(id)bundle andLocale:(id)locale;
+ (void)localizeTextStorage:(id)storage withTemplateBundle:(id)bundle andLocale:(id)locale;
- (BOOL)cellCommentsAllowedOnInfo:(id)info;
- (BOOL)containsVerticalText;
- (BOOL)documentAllowsPencilAnnotationsOnModel:(id)model;
- (BOOL)documentDisallowsHighlightsOnStorage:(id)storage;
- (BOOL)exportToPath:(id)path exporter:(id)exporter delegate:(id)delegate error:(id *)error;
- (BOOL)freehandDrawingsRequireSpacerShape;
- (BOOL)hasPageBackgroundsForSections;
- (BOOL)hasPencilAnnotations;
- (BOOL)hasTrackedChanges;
- (BOOL)hasViewState;
- (BOOL)isDrawableOnSectionTemplatePage:(id)page;
- (BOOL)isMultiPageForQuickLook;
- (BOOL)isSectionInfo:(id)info;
- (BOOL)isSectionModel:(id)model;
- (BOOL)isSectionTemplateInfo:(id)info;
- (BOOL)isTrackingChanges;
- (BOOL)p_drawableInfoIsOwnedByATPPageTemplate:(id)template;
- (BOOL)p_isUniquePageTemplateName:(id)name;
- (BOOL)prepareAndValidateSidecarViewStateRootWithVersionUUIDMismatch:(id)mismatch sidecarDocumentRevision:(id)revision originalDocumentViewStateRoot:(id)root;
- (BOOL)resolverNameIsUsed:(id)used;
- (BOOL)sectionTemplatePagesAllowDrawable:(id)drawable;
- (BOOL)shouldHyphenate;
- (BOOL)shouldShowChangeKind:(int)kind date:(id)date;
- (BOOL)textIsVerticalInStorage:(id)storage atCharIndex:(unint64_t)index;
- (BOOL)useLigatures;
- (CGRect)pageBoundsWithinMargins;
- (CGSize)pageSize;
- (CGSize)paperSize;
- (CGSize)unrotatedPaperSize;
- (NSArray)nonHiddenSections;
- (NSArray)sections;
- (NSString)blankPageTemplateName;
- (TPDocumentRoot)initWithContext:(id)context;
- (TPSection)firstSection;
- (__CFLocale)hyphenationLocale;
- (double)currentDesiredPencilAnnotationDrawingScale;
- (double)footnoteGap;
- (double)valueForMargin:(int64_t)margin;
- (id)UIStateForChart:(id)chart;
- (id)changeSessionManagerForModel:(id)model;
- (id)childEnumerator;
- (id)citationRecords;
- (id)equationEnvironment;
- (id)freehandDrawingToolkitUIState;
- (id)initUsingDefaultThemeWithContext:(id)context;
- (id)modelEnumeratorWithFlags:(unint64_t)flags forObjectsPassingTest:(id)test;
- (id)modelPathComponentForChild:(id)child;
- (id)pBlankPageTemplate;
- (id)pCreateBlankPageTemplate;
- (id)p_previewImageWithImageSize:(CGSize)size;
- (id)p_realTOCEntryStyleFromFakeTOCEntryStyle:(id)style context:(id)context;
- (id)pageTemplateWithName:(id)name;
- (id)pencilAnnotationUIState;
- (id)previewImageForSize:(CGSize)size;
- (id)resolverContainerForName:(id)name caseSensitive:(BOOL)sensitive;
- (id)resolverContainerNamesMatchingPrefix:(id)prefix;
- (id)resolverMatchingName:(id)name;
- (id)resolverMatchingName:(id)name contextContainerName:(id)containerName;
- (id)resolverMatchingName:(id)name contextResolver:(id)resolver;
- (id)resolversMatchingPrefix:(id)prefix;
- (id)sectionTemplatePageOwningInfo:(id)info;
- (id)sectionTemplatePageOwningModel:(id)model;
- (id)storagesWithChanges;
- (id)thumbnailIdentifierForPageIndex:(unint64_t)index;
- (id)uniquePageTemplateNameWithProposedPageTemplateName:(id)name;
- (id)uuidPathPrefixComponentsForInfo:(id)info;
- (int)indexForObject:(id)object;
- (int)naturalAlignmentAtCharIndex:(unint64_t)index inTextStorage:(id)storage;
- (int)verticalAlignmentForTextStorage:(id)storage;
- (int64_t)contentWritingDirection;
- (int64_t)footnoteKind;
- (int64_t)pageViewState;
- (unint64_t)inheritedSectionIndexForSectionIndex:(unint64_t)index;
- (unint64_t)pageIndexForThumbnailIdentifier:(id)identifier;
- (unint64_t)pageTemplateIndexForModelObject:(id)object;
- (unint64_t)rootIndexForObject:(id)object;
- (unsigned)nextUntitledResolverIndex;
- (void)addRemappedTableName:(id)name;
- (void)appSpecificPrepareNewDocumentWithTemplateIdentifier:(id)identifier bundle:(id)bundle documentLocale:(id)locale;
- (void)clearRemappedTableNames;
- (void)dealloc;
- (void)didAddDrawable:(id)drawable;
- (void)documentDidLoad;
- (void)i_assignBlankPageTemplateToAllSections;
- (void)i_removeAllPageTemplates;
- (void)i_upgradeSectionsForPageTemplates;
- (void)invalidateViewState;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)pCommonInitialization;
- (void)pCreateBodyStorage;
- (void)pCreateDrawablesZOrderBodyStorage:(id)storage addAnchoredDrawables:(BOOL)drawables;
- (void)pCreateFloatingDrawables;
- (void)pCreateFlowInfoContainer;
- (void)pFinishInitialization;
- (void)pUpgradeSection:(id)section documentVersion:(unint64_t)version;
- (void)p_initializeShowInBookmarksListParagraphStylesProperty;
- (void)p_upgradeTOCModelForUnity20;
- (void)p_upgradeTOCStyles;
- (void)saveToArchiver:(id)archiver;
- (void)setBodyStorage:(id)storage dolcContext:(id)context;
- (void)setBottomMargin:(double)bottomMargin;
- (void)setChangeTrackingEnabled:(BOOL)enabled;
- (void)setExportViewModeForCTMarkup:(BOOL)markup deletions:(BOOL)deletions paginatedPageController:(id)controller;
- (void)setFloatingDrawables:(id)drawables;
- (void)setFlowInfoContainer:(id)container;
- (void)setFooterMargin:(double)footerMargin;
- (void)setHeaderMargin:(double)headerMargin;
- (void)setIndex:(int)index forObject:(id)object;
- (void)setLaysOutBodyVertically:(BOOL)vertically;
- (void)setLeftMargin:(double)leftMargin;
- (void)setOrientation:(int64_t)orientation;
- (void)setPageScale:(double)pageScale;
- (void)setPageSize:(CGSize)pageSize;
- (void)setPaperID:(id)d;
- (void)setPrinterID:(id)d;
- (void)setRightMargin:(double)rightMargin;
- (void)setStylesheet:(id)stylesheet andThemeForImport:(id)import;
- (void)setStylesheetForUpgradeToSingleStylesheet:(id)stylesheet;
- (void)setTheme:(id)theme;
- (void)setThemeForTemplateImport:(id)import;
- (void)setTopMargin:(double)topMargin;
- (void)setUIState:(id)state forChart:(id)chart;
- (void)setUsesSingleHeaderFooter:(BOOL)footer;
- (void)setValue:(double)value forMargin:(int64_t)margin;
- (void)updateWritingDirection:(unint64_t)direction;
- (void)upgradeFromOldSectionWithPageSize:(CGSize)size leftMargin:(double)margin rightMargin:(double)rightMargin topMargin:(double)topMargin bottomMargin:(double)bottomMargin headerMargin:(double)headerMargin footerMargin:(double)footerMargin;
- (void)viewDidAppear;
- (void)willClose;
- (void)willRemoveDrawable:(id)drawable;
@end

@implementation TPDocumentRoot

- (void)setUsesSingleHeaderFooter:(BOOL)footer
{
  if (self->_usesSingleHeaderFooter != footer)
  {
    objc_msgSend_willModify(self, a2, v6, v7, v8, v9, footer, v3, v4, v5);
    self->_usesSingleHeaderFooter = footer;
  }
}

- (CGSize)pageSize
{
  width = self->_pageSize.width;
  height = self->_pageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)setPageSize:(CGSize)pageSize
{
  height = pageSize.height;
  width = pageSize.width;
  p_pageSize = &self->_pageSize;
  pageSize = self->_pageSize;
  if (pageSize.width != width || pageSize.height != height)
  {
    objc_msgSend_willModify(self, a2, pageSize, *&pageSize.height, v7, v8, v3, v4, v5, v6);
    p_pageSize->width = width;
    p_pageSize->height = height;
  }
}

- (void)setPageScale:(double)pageScale
{
  v10 = pageScale;
  pageScale = self->_pageScale;
  if (pageScale != v10)
  {
    objc_msgSend_willModify(self, a2, *&pageScale, v7, v8, v9, v3, v4, v5, v6);
    self->_pageScale = v10;
  }
}

- (void)setPrinterID:(id)d
{
  dCopy = d;
  if (self->_printerID != dCopy)
  {
    v23 = dCopy;
    objc_msgSend_willModify(self, dCopy, v9, v10, v11, v12, v5, v6, v7, v8);
    v22 = objc_msgSend_copy(v23, v13, v18, v19, v20, v21, v14, v15, v16, v17);

    objc_storeStrong(&self->_printerID, v22);
    dCopy = v22;
  }
}

- (void)setPaperID:(id)d
{
  dCopy = d;
  if (self->_paperID != dCopy)
  {
    v23 = dCopy;
    objc_msgSend_willModify(self, dCopy, v9, v10, v11, v12, v5, v6, v7, v8);
    v22 = objc_msgSend_copy(v23, v13, v18, v19, v20, v21, v14, v15, v16, v17);

    objc_storeStrong(&self->_paperID, v22);
    dCopy = v22;
  }
}

- (void)setOrientation:(int64_t)orientation
{
  if (self->_orientation != orientation)
  {
    objc_msgSend_willModify(self, a2, v6, v7, v8, v9, orientation, v3, v4, v5);
    self->_orientation = orientation;
  }
}

- (void)setLeftMargin:(double)leftMargin
{
  v10 = leftMargin;
  leftMargin = self->_leftMargin;
  if (leftMargin != v10)
  {
    objc_msgSend_willModify(self, a2, *&leftMargin, v7, v8, v9, v3, v4, v5, v6);
    self->_leftMargin = v10;
  }
}

- (void)setRightMargin:(double)rightMargin
{
  v10 = rightMargin;
  rightMargin = self->_rightMargin;
  if (rightMargin != v10)
  {
    objc_msgSend_willModify(self, a2, *&rightMargin, v7, v8, v9, v3, v4, v5, v6);
    self->_rightMargin = v10;
  }
}

- (void)setTopMargin:(double)topMargin
{
  v10 = topMargin;
  topMargin = self->_topMargin;
  if (topMargin != v10)
  {
    objc_msgSend_willModify(self, a2, *&topMargin, v7, v8, v9, v3, v4, v5, v6);
    self->_topMargin = v10;
  }
}

- (void)setBottomMargin:(double)bottomMargin
{
  v10 = bottomMargin;
  bottomMargin = self->_bottomMargin;
  if (bottomMargin != v10)
  {
    objc_msgSend_willModify(self, a2, *&bottomMargin, v7, v8, v9, v3, v4, v5, v6);
    self->_bottomMargin = v10;
  }
}

- (void)setHeaderMargin:(double)headerMargin
{
  v10 = headerMargin;
  headerMargin = self->_headerMargin;
  if (headerMargin != v10)
  {
    objc_msgSend_willModify(self, a2, *&headerMargin, v7, v8, v9, v3, v4, v5, v6);
    self->_headerMargin = v10;
  }
}

- (void)setFooterMargin:(double)footerMargin
{
  v10 = footerMargin;
  footerMargin = self->_footerMargin;
  if (footerMargin != v10)
  {
    objc_msgSend_willModify(self, a2, *&footerMargin, v7, v8, v9, v3, v4, v5, v6);
    self->_footerMargin = v10;
  }
}

- (void)setLaysOutBodyVertically:(BOOL)vertically
{
  if (self->_laysOutBodyVertically != vertically)
  {
    objc_msgSend_willModify(self, a2, v6, v7, v8, v9, vertically, v3, v4, v5);
    self->_laysOutBodyVertically = vertically;
  }
}

- (void)setChangeTrackingEnabled:(BOOL)enabled
{
  if (self->_changeTrackingEnabled != enabled)
  {
    objc_msgSend_willModify(self, a2, v6, v7, v8, v9, enabled, v3, v4, v5);
    self->_changeTrackingEnabled = enabled;
  }
}

- (BOOL)isTrackingChanges
{
  if (self->_changeTrackingEnabled)
  {
    v10 = objc_msgSend_uiState(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
    v20 = objc_msgSend_changeTrackingPaused(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15) ^ 1;
  }

  else
  {
    LOBYTE(v20) = 0;
  }

  return v20;
}

- (id)pageTemplateWithName:(id)name
{
  nameCopy = name;
  pageTemplates = self->_pageTemplates;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = sub_276005D38;
  v26[3] = &unk_27A6A8D18;
  v6 = nameCopy;
  v27 = v6;
  v16 = objc_msgSend_indexOfObjectPassingTest_(pageTemplates, v7, v11, v12, v13, v14, v26, v8, v9, v10);
  if (v16 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v24 = 0;
  }

  else
  {
    v24 = objc_msgSend_objectAtIndexedSubscript_(self->_pageTemplates, v15, v20, v21, v22, v23, v16, v17, v18, v19);
  }

  return v24;
}

- (NSString)blankPageTemplateName
{
  v2 = sub_275FFFC3C(self);
  v9 = objc_msgSend_localizedStringForKey_value_table_(v2, v3, v5, v6, v7, v8, @"Blank", &stru_288501738, @"Pages", v4);

  return v9;
}

- (id)uniquePageTemplateNameWithProposedPageTemplateName:(id)name
{
  nameCopy = name;
  v5 = 1;
  v6 = nameCopy;
  for (i = objc_msgSend_p_isUniquePageTemplateName_(self, v7, v11, v12, v13, v14, nameCopy, v8, v9, v10); (i & 1) == 0; i = objc_msgSend_p_isUniquePageTemplateName_(self, v33, v37, v38, v39, v40, v32, v34, v35, v36))
  {
    v16 = sub_275FFFC3C(i);
    v23 = objc_msgSend_localizedStringForKey_value_table_(v16, v17, v19, v20, v21, v22, @"%1$@ %2$lu", &stru_288501738, @"Pages", v18);

    v32 = objc_msgSend_localizedStringWithFormat_(MEMORY[0x277CCACA8], v24, v28, v29, v30, v31, v23, v25, v26, v27, nameCopy, v5);

    ++v5;
    v6 = v32;
  }

  return v6;
}

- (TPSection)firstSection
{
  bodyStorage = self->_bodyStorage;
  if (bodyStorage)
  {
    objc_msgSend_sectionEnumeratorAtCharIndex_(bodyStorage, v6, v7, v8, v9, a2, 0, v3, v4);
  }

  else
  {
    v11 = 0uLL;
    memset(v14, 0, sizeof(v14));
  }

  v12 = sub_276000688(v14, 0, v11, v7, v8, v9, v2, v3, v4, v5);
  sub_2760005A4(v14);

  return v12;
}

- (NSArray)nonHiddenSections
{
  bodyStorage = self->_bodyStorage;
  v11 = objc_msgSend_range(bodyStorage, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  if (bodyStorage)
  {
    objc_msgSend_sectionEnumeratorForCharRange_(bodyStorage, v17, v18, v19, v20, v12, v11, v12, v15);
  }

  else
  {
    v21 = 0uLL;
    v69 = 0u;
    v70 = 0u;
    *from = 0u;
  }

  v26 = objc_msgSend_array(MEMORY[0x277CBEB18], v12, v21, v18, v19, v20, v13, v14, v15, v16);
  do
  {
    v35 = sub_276000688(from, 0, v27, v28, v29, v30, v22, v23, v24, v25);
    if (v35)
    {
      objc_msgSend_addObject_(v26, v31, v36, v37, v38, v39, v35, v32, v33, v34);
    }

    else
    {
      v40 = MEMORY[0x277D81150];
      v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, v36, v37, v38, v39, "[TPDocumentRoot nonHiddenSections]", v32, v33, v34);
      v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, v46, v47, v48, v49, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm", v43, v44, v45);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v51, v52, v53, v54, v55, v41, v50, 479, 0, "invalid nil value for '%{public}s'", "section");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v56, v61, v62, v63, v64, v57, v58, v59, v60);
    }

    sub_276000610(from, v67);
    v65 = sub_2760009C4(v67);
    sub_2760005A4(v67);
  }

  while (!v65);
  sub_2760005A4(from);

  return v26;
}

- (NSArray)sections
{
  v11 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v21 = objc_msgSend_bodyStorage(self, v12, v17, v18, v19, v20, v13, v14, v15, v16);
  v31 = objc_msgSend_sectionCount(v21, v22, v27, v28, v29, v30, v23, v24, v25, v26);

  if (v31)
  {
    for (i = 0; i != v31; ++i)
    {
      v42 = objc_msgSend_bodyStorage(self, v32, v37, v38, v39, v40, v33, v34, v35, v36);
      v50 = objc_msgSend_sectionAtSectionIndex_effectiveRange_(v42, v43, v46, v47, v48, v49, i, 0, v44, v45);

      if (v50)
      {
        objc_msgSend_addObject_(v11, v51, v55, v56, v57, v58, v50, v52, v53, v54);
      }

      else
      {
        v59 = MEMORY[0x277D81150];
        v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, v55, v56, v57, v58, "[TPDocumentRoot sections]", v52, v53, v54);
        v69 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v61, v65, v66, v67, v68, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm", v62, v63, v64);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v59, v70, v71, v72, v73, v74, v60, v69, 494, 0, "nil section in body storage");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v75, v80, v81, v82, v83, v76, v77, v78, v79);
      }
    }
  }

  return v11;
}

- (void)i_removeAllPageTemplates
{
  v64 = *MEMORY[0x277D85DE8];
  v11 = objc_msgSend_settings(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  hasBody = objc_msgSend_hasBody(v11, v12, v17, v18, v19, v20, v13, v14, v15, v16);

  if ((hasBody & 1) == 0)
  {
    v31 = objc_msgSend_pageTemplates(self, v22, v27, v28, v29, v30, v23, v24, v25, v26);
    v41 = objc_msgSend_copy(v31, v32, v37, v38, v39, v40, v33, v34, v35, v36);

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v42 = v41;
    v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v43, v45, v46, v47, v48, &v59, v63, 16, v44);
    if (v52)
    {
      v57 = *v60;
      do
      {
        v58 = 0;
        do
        {
          if (*v60 != v57)
          {
            objc_enumerationMutation(v42);
          }

          objc_msgSend_removeObject_forContainerNamed_(self, v49, v53, v54, v55, v56, *(*(&v59 + 1) + 8 * v58++), @"TP.DocumentRoot.PageTemplates", v50, v51, v59);
        }

        while (v52 != v58);
        v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v49, v53, v54, v55, v56, &v59, v63, 16, v51);
      }

      while (v52);
    }
  }
}

- (void)i_assignBlankPageTemplateToAllSections
{
  v64 = *MEMORY[0x277D85DE8];
  if (!self->_pageTemplates)
  {
    v11 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v6, v7, v8, v9, v2, v3, v4, v5);
    pageTemplates = self->_pageTemplates;
    self->_pageTemplates = v11;
  }

  v13 = objc_msgSend_pBlankPageTemplate(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v22 = objc_msgSend_sections(self, v14, 0, v19, v20, v21, v15, v16, v17, v18, 0);
  v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, v25, v26, v27, v28, &v59, v63, 16, v24);
  if (v33)
  {
    v38 = *v60;
    do
    {
      v39 = 0;
      do
      {
        if (*v60 != v38)
        {
          objc_enumerationMutation(v22);
        }

        v40 = objc_msgSend_sectionTemplatePageForType_(*(*(&v59 + 1) + 8 * v39), v29, v34, v35, v36, v37, 0, v30, v31, v32);
        v50 = objc_msgSend_objectUUIDPath(v13, v41, v46, v47, v48, v49, v42, v43, v44, v45);
        objc_msgSend_i_setPageTemplateUUIDPath_(v40, v51, v55, v56, v57, v58, v50, v52, v53, v54);

        ++v39;
      }

      while (v33 != v39);
      v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v29, v34, v35, v36, v37, &v59, v63, 16, v32);
    }

    while (v33);
  }
}

- (void)i_upgradeSectionsForPageTemplates
{
  v77 = *MEMORY[0x277D85DE8];
  if (!self->_pageTemplates)
  {
    v11 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v6, v7, v8, v9, v2, v3, v4, v5);
    pageTemplates = self->_pageTemplates;
    self->_pageTemplates = v11;
  }

  v13 = objc_msgSend_pBlankPageTemplate(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v22 = objc_msgSend_sections(self, v14, 0, v19, v20, v21, v15, v16, v17, v18, 0);
  v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, v25, v26, v27, v28, &v72, v76, 16, v24);
  if (v34)
  {
    v39 = *v73;
    do
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v73 != v39)
        {
          objc_enumerationMutation(v22);
        }

        v41 = *(*(&v72 + 1) + 8 * i);
        v42 = objc_msgSend_pageTemplate(v41, v29, v35, v36, v37, v38, v30, v31, v32, v33);
        v43 = v42 == 0;

        if (v43)
        {
          if (!v13)
          {
            v13 = objc_msgSend_pCreateBlankPageTemplate(self, v29, v35, v36, v37, v38, v30, v31, v32, v33);
          }

          v44 = objc_msgSend_sectionTemplatePageForType_(v41, v29, v35, v36, v37, v38, 0, v31, v32, v33);
          objc_msgSend_willModifyForUpgrade(v44, v45, v50, v51, v52, v53, v46, v47, v48, v49);
          v63 = objc_msgSend_objectUUIDPath(v13, v54, v59, v60, v61, v62, v55, v56, v57, v58);
          objc_msgSend_i_setPageTemplateUUIDPath_(v44, v64, v68, v69, v70, v71, v63, v65, v66, v67);
        }
      }

      v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v29, v35, v36, v37, v38, &v72, v76, 16, v33);
    }

    while (v34);
  }
}

- (id)equationEnvironment
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_equationEnvironment)
  {
    equationEnvironmentData = selfCopy->_equationEnvironmentData;
    if (equationEnvironmentData)
    {
      goto LABEL_8;
    }

    v18 = objc_msgSend_dataForDefaultEnvironment(MEMORY[0x277D7FF68], v3, v8, v9, v10, v11, v4, v5, v6, v7);
    if (v18)
    {
      objc_msgSend_willModify(selfCopy, v13, v19, v20, v21, v22, v14, v15, v16, v17);
      v23 = selfCopy->_equationEnvironmentData;
      selfCopy->_equationEnvironmentData = 0;

      v24 = MEMORY[0x277D80828];
      v34 = objc_msgSend_context(selfCopy, v25, v30, v31, v32, v33, v26, v27, v28, v29);
      v41 = objc_msgSend_dataFromNSData_filename_context_(v24, v35, v37, v38, v39, v40, v18, @"EQKitEnvironment.plist", v34, v36);
      v42 = selfCopy->_equationEnvironmentData;
      selfCopy->_equationEnvironmentData = v41;
    }

    if (!selfCopy->_equationEnvironmentData)
    {
      v43 = MEMORY[0x277D81150];
      v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v19, v20, v21, v22, "[TPDocumentRoot equationEnvironment]", v15, v16, v17);
      v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, v49, v50, v51, v52, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm", v46, v47, v48);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v43, v54, v55, v56, v57, v58, v44, v53, 566, 0, "invalid nil value for '%{public}s'", "_equationEnvironmentData");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v59, v64, v65, v66, v67, v60, v61, v62, v63);
    }

    equationEnvironmentData = selfCopy->_equationEnvironmentData;
    if (equationEnvironmentData)
    {
LABEL_8:
      v72 = objc_msgSend_NSData(equationEnvironmentData, v3, v8, v9, v10, v11, v4, v5, v6, v7);
      if (v72)
      {
        v82 = objc_msgSend_environmentFromData_(MEMORY[0x277D7FF68], v68, v73, v74, v75, v76, v72, v69, v70, v71);
        if (v82)
        {
          objc_msgSend_willModify(selfCopy, v77, v83, v84, v85, v86, v78, v79, v80, v81);
          objc_storeStrong(&selfCopy->_equationEnvironment, v82);
        }
      }
    }

    if (!selfCopy->_equationEnvironment)
    {
      if (*MEMORY[0x277D81430] != -1)
      {
        sub_2760383DC();
      }

      v87 = objc_msgSend_defaultEnvironment(MEMORY[0x277D7FF68], v3, v8, v9, v10, v11, v4, v5, v6, v7);
      equationEnvironment = selfCopy->_equationEnvironment;
      selfCopy->_equationEnvironment = v87;
    }
  }

  objc_sync_exit(selfCopy);

  v89 = selfCopy->_equationEnvironment;

  return v89;
}

- (void)documentDidLoad
{
  v12.receiver = self;
  v12.super_class = TPDocumentRoot;
  [(TSADocumentRoot *)&v12 documentDidLoad];
  if (self->_shouldUniquifyTableNames)
  {
    objc_msgSend_p_uniquifyTableNames(self, v3, v8, v9, v10, v11, v4, v5, v6, v7);
    self->_shouldUniquifyTableNames = 0;
  }
}

- (void)dealloc
{
  hyphenationLocale = self->_hyphenationLocale;
  if (hyphenationLocale)
  {
    CFRelease(hyphenationLocale);
  }

  tablesWithUniqueNames = self->_tablesWithUniqueNames;
  self->_tablesWithUniqueNames = 0;

  v5.receiver = self;
  v5.super_class = TPDocumentRoot;
  [(TSADocumentRoot *)&v5 dealloc];
}

- (void)pCreateBodyStorage
{
  v11 = objc_msgSend_theme(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v56 = objc_msgSend_bodyStyle(v11, v12, v17, v18, v19, v20, v13, v14, v15, v16);

  v21 = objc_alloc(MEMORY[0x277D80F28]);
  v31 = objc_msgSend_context(self, v22, v27, v28, v29, v30, v23, v24, v25, v26);
  stylesheet = self->_stylesheet;
  v42 = objc_msgSend_initialListStyle(v56, v33, v38, v39, v40, v41, v34, v35, v36, v37);
  v48 = objc_msgSend_initWithContext_string_kind_stylesheet_paragraphStyle_listStyle_section_columnStyle_(v21, v43, v44, v45, v46, v47, v31, &stru_288501738, 0, stylesheet, v56, v42, 0, 0);

  objc_msgSend_setBodyStorage_dolcContext_(self, v49, v52, v53, v54, v55, v48, 0, v50, v51);
}

- (void)pCreateDrawablesZOrderBodyStorage:(id)storage addAnchoredDrawables:(BOOL)drawables
{
  drawablesCopy = drawables;
  storageCopy = storage;
  v6 = [TPDrawablesZOrder alloc];
  v16 = objc_msgSend_context(self, v7, v12, v13, v14, v15, v8, v9, v10, v11);
  v25 = objc_msgSend_initWithContext_(v6, v17, v21, v22, v23, v24, v16, v18, v19, v20);
  drawablesZOrder = self->_drawablesZOrder;
  self->_drawablesZOrder = v25;

  if (storageCopy)
  {
    objc_msgSend_addDrawable_(self->_drawablesZOrder, v27, v31, v32, v33, v34, storageCopy, v28, v29, v30);
    if (drawablesCopy)
    {
      v44 = objc_msgSend_attachmentCount(storageCopy, v35, v40, v41, v42, v43, v36, v37, v38, v39);
      if (v44)
      {
        for (i = 0; i != v44; ++i)
        {
          objc_opt_class();
          v53 = objc_msgSend_attachmentAtAttachmentIndex_outCharIndex_(storageCopy, v46, v49, v50, v51, v52, i, 0, v47, v48);
          v54 = TSUDynamicCast();

          if (v54 && objc_msgSend_isDrawable(v54, v55, v60, v61, v62, v63, v56, v57, v58, v59) && objc_msgSend_isAnchored(v54, v64, v69, v70, v71, v72, v65, v66, v67, v68) && (objc_msgSend_isPartitioned(v54, v73, v78, v79, v80, v81, v74, v75, v76, v77) & 1) == 0)
          {
            v91 = self->_drawablesZOrder;
            v92 = objc_msgSend_drawable(v54, v82, v87, v88, v89, v90, v83, v84, v85, v86);
            objc_msgSend_addDrawable_(v91, v93, v97, v98, v99, v100, v92, v94, v95, v96);
          }
        }
      }
    }
  }
}

- (void)pCreateFloatingDrawables
{
  v3 = [TPFloatingDrawables alloc];
  v13 = objc_msgSend_context(self, v4, v9, v10, v11, v12, v5, v6, v7, v8);
  v22 = objc_msgSend_initWithContext_(v3, v14, v18, v19, v20, v21, v13, v15, v16, v17);
  floatingDrawables = self->_floatingDrawables;
  self->_floatingDrawables = v22;

  objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(self->_floatingDrawables, v24, v27, v28, v29, v30, self, 0, v25, v26);
  v38 = self->_floatingDrawables;

  objc_msgSend_wasAddedToDocumentRoot_dolcContext_(v38, v31, v34, v35, v36, v37, self, 0, v32, v33);
}

- (void)pCreateFlowInfoContainer
{
  v3 = objc_alloc(MEMORY[0x277D80E38]);
  v13 = objc_msgSend_context(self, v4, v9, v10, v11, v12, v5, v6, v7, v8);
  v22 = objc_msgSend_initWithContext_(v3, v14, v18, v19, v20, v21, v13, v15, v16, v17);
  flowInfoContainer = self->_flowInfoContainer;
  self->_flowInfoContainer = v22;

  objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(self->_flowInfoContainer, v24, v27, v28, v29, v30, self, 0, v25, v26);
  v38 = self->_flowInfoContainer;

  objc_msgSend_wasAddedToDocumentRoot_dolcContext_(v38, v31, v34, v35, v36, v37, self, 0, v32, v33);
}

- (void)pCommonInitialization
{
  if (!self->_settings)
  {
    v11 = [TPDocumentSettings alloc];
    v21 = objc_msgSend_context(self, v12, v17, v18, v19, v20, v13, v14, v15, v16);
    v30 = objc_msgSend_initWithContext_(v11, v22, v26, v27, v28, v29, v21, v23, v24, v25);
    settings = self->_settings;
    self->_settings = v30;
  }

  stylesheet = self->_stylesheet;
  v33 = objc_msgSend_bodyStorage(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v43 = objc_msgSend_stylesheet(v33, v34, v39, v40, v41, v42, v35, v36, v37, v38);

  if (stylesheet != v43)
  {
    v52 = MEMORY[0x277D81150];
    v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, v48, v49, v50, v51, "[TPDocumentRoot pCommonInitialization]", v45, v46, v47);
    v62 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, v58, v59, v60, v61, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm", v55, v56, v57);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v52, v63, v64, v65, v66, v67, v53, v62, 832, 0, "Document style sheet and body storage style sheet don't match");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v68, v73, v74, v75, v76, v69, v70, v71, v72);
  }

  self->_needsInitialization = 0;
}

- (void)pFinishInitialization
{
  if (!self->_stylesheet)
  {
    v11 = objc_alloc(MEMORY[0x277D80AE0]);
    v21 = objc_msgSend_context(self, v12, v17, v18, v19, v20, v13, v14, v15, v16);
    canCullStyles = objc_msgSend_initWithContext_canCullStyles_(v11, v22, v25, v26, v27, v28, v21, 1, v23, v24);
    stylesheet = self->_stylesheet;
    self->_stylesheet = canCullStyles;
  }

  objc_msgSend_pCreateBodyStorage(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v40 = objc_msgSend_bodyStorage(self, v31, v36, v37, v38, v39, v32, v33, v34, v35);
  objc_msgSend_pCreateDrawablesZOrderBodyStorage_addAnchoredDrawables_(self, v41, v44, v45, v46, v47, v40, 0, v42, v43);

  objc_msgSend_pCreateFloatingDrawables(self, v48, v53, v54, v55, v56, v49, v50, v51, v52);
  objc_msgSend_pCreateFlowInfoContainer(self, v57, v62, v63, v64, v65, v58, v59, v60, v61);

  objc_msgSend_pCommonInitialization(self, v66, v71, v72, v73, v74, v67, v68, v69, v70);
}

- (TPDocumentRoot)initWithContext:(id)context
{
  contextCopy = context;
  v29.receiver = self;
  v29.super_class = TPDocumentRoot;
  v5 = [(TSADocumentRoot *)&v29 initWithContext:contextCopy];
  v6 = v5;
  if (v5)
  {
    v5[529] = 1;
    *(v5 + 536) = *MEMORY[0x277D81640];
    *(v5 + 69) = 0x3FF0000000000000;
    objc_storeStrong(v5 + 70, *MEMORY[0x277D81648]);
    objc_storeStrong(&v6->_paperID, *MEMORY[0x277D815E0]);
    v6->_leftMargin = 72.0;
    v6->_rightMargin = 72.0;
    v6->_topMargin = 72.0;
    v6->_bottomMargin = 72.0;
    v6->_headerMargin = 36.0;
    v6->_footerMargin = 36.0;
    v6->_tableNameCounter = 1;
    v6->_shouldUniquifyTableNames = 0;
    tablesWithUniqueNames = v6->_tablesWithUniqueNames;
    v6->_tablesWithUniqueNames = 0;

    v6->_shouldUseAnchoredDrawableWrapSlop = 0;
    v8 = objc_alloc(MEMORY[0x277D80AE0]);
    v18 = objc_msgSend_context(v6, v9, v14, v15, v16, v17, v10, v11, v12, v13);
    canCullStyles = objc_msgSend_initWithContext_canCullStyles_(v8, v19, v22, v23, v24, v25, v18, 1, v20, v21);
    stylesheet = v6->_stylesheet;
    v6->_stylesheet = canCullStyles;
  }

  return v6;
}

- (id)initUsingDefaultThemeWithContext:(id)context
{
  contextCopy = context;
  inited = objc_msgSend_initDocumentObjectWithContext_(self, v5, v9, v10, v11, v12, contextCopy, v6, v7, v8);
  if (inited)
  {
    v20 = objc_msgSend_themeWithContext_alternate_withStylesheet_(TPTheme, v13, v16, v17, v18, v19, contextCopy, 5, inited[61], v14);
    objc_msgSend_setTheme_(inited, v21, v25, v26, v27, v28, v20, v22, v23, v24);
  }

  return inited;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v14 = objc_msgSend_context(self, v5, v10, v11, v12, v13, v6, v7, v8, v9);
  v15 = unarchiverCopy;
  google::protobuf::internal::AssignDescriptors();
  v24 = objc_msgSend_messageWithDescriptor_(v15, v16, v20, v21, v22, v23, *off_2812F85B8, v17, v18, v19);

  if (*(v24 + 200))
  {
    v25 = *(v24 + 200);
  }

  else
  {
    v25 = MEMORY[0x277D80010];
  }

  v259.receiver = self;
  v259.super_class = TPDocumentRoot;
  [(TSADocumentRoot *)&v259 loadFromArchive:v25 unarchiver:v15];
  v34 = *(v24 + 16);
  if ((v34 & 0x4000) != 0)
  {
    v35 = objc_msgSend_readDataReferenceMessage_(v15, v26, v30, v31, v32, v33, *(v24 + 232), v27, v28, v29);
    equationEnvironmentData = self->_equationEnvironmentData;
    self->_equationEnvironmentData = v35;

    v34 = *(v24 + 16);
  }

  if ((v34 & 0x40) != 0)
  {
    v37 = *(v24 + 168);
    v258[0] = MEMORY[0x277D85DD0];
    v258[1] = 3221225472;
    v258[2] = sub_2760080C4;
    v258[3] = &unk_27A6A8D40;
    v258[4] = self;
    v38 = v15;
    v39 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v38, v40, v41, v42, v43, v44, v37, v39, 0, v258);

    v34 = *(v24 + 16);
  }

  if ((v34 & 4) != 0)
  {
    v45 = *(v24 + 136);
    v257[0] = MEMORY[0x277D85DD0];
    v257[1] = 3221225472;
    v257[2] = sub_2760081CC;
    v257[3] = &unk_27A6A8D68;
    v257[4] = self;
    v46 = v15;
    v47 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v46, v48, v49, v50, v51, v52, v45, v47, 0, v257);

    v34 = *(v24 + 16);
  }

  if ((v34 & 0x10) != 0)
  {
    v53 = *(v24 + 152);
    v256[0] = MEMORY[0x277D85DD0];
    v256[1] = 3221225472;
    v256[2] = sub_2760082D4;
    v256[3] = &unk_27A6A8D90;
    v256[4] = self;
    v54 = v15;
    v55 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v54, v56, v57, v58, v59, v60, v53, v55, 0, v256);

    v34 = *(v24 + 16);
  }

  if ((v34 & 0x1000) != 0)
  {
    v61 = *(v24 + 216);
    v255[0] = MEMORY[0x277D85DD0];
    v255[1] = 3221225472;
    v255[2] = sub_2760083D0;
    v255[3] = &unk_27A6A8DB8;
    v255[4] = self;
    v62 = v15;
    v63 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v62, v64, v65, v66, v67, v68, v61, v63, 0, v255);

    v34 = *(v24 + 16);
  }

  if ((v34 & 8) != 0)
  {
    v69 = *(v24 + 144);
    v254[0] = MEMORY[0x277D85DD0];
    v254[1] = 3221225472;
    v254[2] = sub_2760084D8;
    v254[3] = &unk_27A6A8DE0;
    v254[4] = self;
    v70 = v15;
    v71 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v70, v72, v73, v74, v75, v76, v69, v71, 0, v254);

    v34 = *(v24 + 16);
  }

  if ((v34 & 0x8000) != 0)
  {
    v77 = *(v24 + 240);
    v253[0] = MEMORY[0x277D85DD0];
    v253[1] = 3221225472;
    v253[2] = sub_2760085E0;
    v253[3] = &unk_27A6A8E08;
    v253[4] = self;
    v78 = v15;
    v79 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v78, v80, v81, v82, v83, v84, v77, v79, 0, v253);
  }

  v251[0] = 0;
  v251[1] = v251;
  v251[2] = 0x3032000000;
  v251[3] = sub_2760086E8;
  v251[4] = sub_2760086F8;
  v252 = 0;
  v85 = *(v24 + 16);
  if ((v85 & 0x20) != 0)
  {
    v86 = *(v24 + 160);
    v250[0] = MEMORY[0x277D85DD0];
    v250[1] = 3221225472;
    v250[2] = sub_276008700;
    v250[3] = &unk_27A6A8E30;
    v250[4] = v251;
    v87 = v15;
    v88 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v87, v89, v90, v91, v92, v93, v86, v88, 0, v250);

    v85 = *(v24 + 16);
  }

  if ((v85 & 0x80) != 0)
  {
    v94 = *(v24 + 176);
    v249[0] = MEMORY[0x277D85DD0];
    v249[1] = 3221225472;
    v249[2] = sub_2760087F8;
    v249[3] = &unk_27A6A8E58;
    v249[4] = self;
    v95 = v15;
    v96 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v95, v97, v98, v99, v100, v101, v94, v96, 0, v249);
  }

  v248[0] = MEMORY[0x277D85DD0];
  v248[1] = 3221225472;
  v248[2] = sub_2760088F4;
  v248[3] = &unk_27A6A8508;
  v248[4] = self;
  v102 = v15;
  v103 = objc_opt_class();
  objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v102, v104, v105, v106, v107, v108, v24 + 24, v103, 0, v248);

  if (*(v24 + 19))
  {
    self->_usesSingleHeaderFooter = *(v24 + 284);
  }

  v247[0] = MEMORY[0x277D85DD0];
  v247[1] = 3221225472;
  v247[2] = sub_276008908;
  v247[3] = &unk_27A6A8508;
  v247[4] = self;
  v109 = v102;
  v110 = objc_opt_class();
  objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v109, v111, v112, v113, v114, v115, v24 + 48, v110, 0, v247);

  v246[0] = MEMORY[0x277D85DD0];
  v246[1] = 3221225472;
  v246[2] = sub_27600891C;
  v246[3] = &unk_27A6A8508;
  v246[4] = self;
  v116 = v109;
  v117 = objc_opt_class();
  objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v116, v118, v119, v120, v121, v122, v24 + 72, v117, 0, v246);

  v132 = *(v24 + 16);
  if ((v132 & 0x800) != 0)
  {
    v133 = *(v24 + 208);
    v245[0] = MEMORY[0x277D85DD0];
    v245[1] = 3221225472;
    v245[2] = sub_276008930;
    v245[3] = &unk_27A6A8E80;
    v245[4] = self;
    v134 = v116;
    v135 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v134, v136, v137, v138, v139, v140, v133, v135, 0, v245);

    v132 = *(v24 + 16);
  }

  if ((v132 & 0x40000000) != 0)
  {
    self->_orientation = *(v24 + 296);
    if ((v132 & 0x20000) != 0)
    {
LABEL_28:
      v128 = vcvtq_f64_f32(*(v24 + 256));
      self->_pageSize = v128;
      self->_pageScale = 1.0;
      if ((v132 & 0x20000000) != 0)
      {
        self->_pageScale = *(v24 + 292);
      }

      self->_leftMargin = *(v24 + 264);
      self->_rightMargin = *(v24 + 268);
      self->_topMargin = *(v24 + 272);
      self->_bottomMargin = *(v24 + 276);
      self->_headerMargin = *(v24 + 280);
      v128.n128_f64[0] = *(v24 + 288);
      *&self->_footerMargin = v128.n128_u64[0];
      if (v132)
      {
        goto LABEL_31;
      }

      goto LABEL_34;
    }
  }

  else
  {
    objc_msgSend_willModifyForUpgrade(self, v123, v128, v129, v130, v131, v124, v125, v126, v127);
    v128.n128_u64[0] = *&self->_pageSize.width;
    v129.n128_u64[0] = *&self->_pageSize.height;
    self->_orientation = v128.n128_f64[0] > v129.n128_f64[0];
    v132 = *(v24 + 16);
    if ((v132 & 0x20000) != 0)
    {
      goto LABEL_28;
    }
  }

  if (v132)
  {
LABEL_31:
    v141 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v123, v128, v129, v130, v131, *(v24 + 120) & 0xFFFFFFFFFFFFFFFELL, v125, v126, v127);
    v151 = objc_msgSend_copy(v141, v142, v147, v148, v149, v150, v143, v144, v145, v146);
    printerID = self->_printerID;
    self->_printerID = v151;

    goto LABEL_35;
  }

LABEL_34:
  v153 = *MEMORY[0x277D81648];
  v141 = self->_printerID;
  self->_printerID = v153;
LABEL_35:

  if ((*(v24 + 16) & 2) != 0)
  {
    v162 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v154, v158, v159, v160, v161, *(v24 + 128) & 0xFFFFFFFFFFFFFFFELL, v155, v156, v157);
    v172 = objc_msgSend_copy(v162, v163, v168, v169, v170, v171, v164, v165, v166, v167);
    paperID = self->_paperID;
    self->_paperID = v172;
  }

  else
  {
    v162 = self->_paperID;
    self->_paperID = &stru_288501738;
  }

  self->_laysOutBodyVertically = *(v24 + 285);
  v182 = *(v24 + 16);
  if ((v182 & 0x4000000) != 0)
  {
    v183 = *(v24 + 286);
  }

  else
  {
    v183 = 0;
  }

  self->_changeTrackingEnabled = v183 & 1;
  if ((v182 & 0x2000) != 0)
  {
    v184 = *(v24 + 224);
    v244[0] = MEMORY[0x277D85DD0];
    v244[1] = 3221225472;
    v244[2] = sub_276008A2C;
    v244[3] = &unk_27A6A8EA8;
    v244[4] = self;
    v185 = v116;
    v186 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v185, v187, v188, v189, v190, v191, v184, v186, 0, v244);
  }

  v192 = *(v24 + 104);
  if (v192)
  {
    v193 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v174, v178, v179, v180, v181, v192, v175, v176, v177);
    pageTemplates = self->_pageTemplates;
    self->_pageTemplates = v193;

    v243[0] = MEMORY[0x277D85DD0];
    v243[1] = 3221225472;
    v243[2] = sub_276008A98;
    v243[3] = &unk_27A6A8508;
    v243[4] = self;
    v195 = v116;
    v196 = objc_opt_class();
    objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v195, v197, v198, v199, v200, v201, v24 + 96, v196, 0, v243);
  }

  v202 = *(v24 + 16);
  if (v202 < 0)
  {
    v203 = *(v24 + 300);
  }

  else
  {
    v203 = 1;
  }

  self->_shouldUseAnchoredDrawableWrapSlop = v203;
  if ((v202 & 0x8000000) != 0)
  {
    v204 = *(v24 + 287);
  }

  else
  {
    v204 = 0;
  }

  hasPreUFFVersion = objc_msgSend_hasPreUFFVersion(v116, v174, v178, v179, v180, v181, v192, v175, v176, v177);
  v215 = objc_msgSend_preUFFVersion(v116, v206, v211, v212, v213, v214, v207, v208, v209, v210);
  self->_tableNameCounter = 1;
  self->_shouldUniquifyTableNames = 0;
  tablesWithUniqueNames = self->_tablesWithUniqueNames;
  self->_tablesWithUniqueNames = 0;

  v226 = objc_msgSend_fileFormatVersion(v116, v217, v222, v223, v224, v225, v218, v219, v220, v221);
  v236[0] = MEMORY[0x277D85DD0];
  v236[1] = 3221225472;
  v236[2] = sub_276008AB0;
  v236[3] = &unk_27A6A8ED0;
  v236[4] = self;
  v227 = v14;
  v237 = v227;
  v238 = v251;
  v241 = hasPreUFFVersion;
  v239 = v215;
  v240 = v226;
  v242 = v204 & 1;
  objc_msgSend_addFinalizeHandler_(v116, v228, v232, v233, v234, v235, v236, v229, v230, v231);

  _Block_object_dispose(v251, 8);
}

- (void)p_upgradeTOCStyles
{
  v506 = *MEMORY[0x277D85DE8];
  v10 = objc_msgSend_theme(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v485 = *MEMORY[0x277D80B98];
  hasPresetsOfKind = objc_msgSend_hasPresetsOfKind_(v10, v11, v15, v16, v17, v18, *MEMORY[0x277D80B98], v12, v13, v14);

  if (hasPresetsOfKind)
  {
    obj = objc_msgSend_theme(self, v20, v25, v26, v27, v28, v21, v22, v23, v24);
    objc_msgSend_hasPresetsOfKind_(obj, v29, v33, v34, v35, v36, v485, v30, v31, v32);

    return;
  }

  objc_msgSend_willModifyForUpgrade(self, v20, v25, v26, v27, v28, v21, v22, v23, v24);
  v490 = objc_opt_new();
  v37 = objc_alloc(MEMORY[0x277D80F50]);
  v47 = objc_msgSend_context(self, v38, v43, v44, v45, v46, v39, v40, v41, v42);
  v489 = objc_msgSend_initWithContext_(v37, v48, v52, v53, v54, v55, v47, v49, v50, v51);

  v57 = sub_275FFFC3C(v56);
  v64 = objc_msgSend_localizedStringForKey_value_table_(v57, v58, v60, v61, v62, v63, @"Classic TOC", &stru_288501738, @"Pages", v59);
  objc_msgSend_setDisplayName_(v489, v65, v69, v70, v71, v72, v64, v66, v67, v68);

  v488 = objc_alloc_init(MEMORY[0x277D812B8]);
  objc_msgSend_stylesheet(self, v73, v78, v79, v80, v81, v74, v75, v76, v77);
  v501 = 0u;
  v502 = 0u;
  v499 = 0u;
  v491 = v500 = 0u;
  obja = objc_msgSend_styles(v491, v82, 0, v87, v88, v89, v83, v84, v85, v86);
  v96 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v90, v92, v93, v94, v95, &v499, v505, 16, v91);
  if (!v96)
  {
    goto LABEL_26;
  }

  v97 = *v500;
  v487 = *MEMORY[0x277D81000];
  v486 = *MEMORY[0x277D81058];
  do
  {
    for (i = 0; i != v96; ++i)
    {
      if (*v500 != v97)
      {
        objc_enumerationMutation(obja);
      }

      objc_opt_class();
      v99 = TSUDynamicCast();
      v108 = v99;
      if (v99)
      {
        v109 = objc_msgSend_intValueForProperty_(v99, v100, v104, v105, v106, v107, 108, v101, v102, v103);
        v118 = objc_msgSend_valueForProperty_(v108, v110, v114, v115, v116, v117, 109, v111, v112, v113);
        v128 = objc_msgSend_null(MEMORY[0x277CBEB68], v119, v124, v125, v126, v127, v120, v121, v122, v123);
        isEqual = objc_msgSend_isEqual_(v118, v129, v133, v134, v135, v136, v128, v130, v131, v132);

        if (isEqual)
        {
          v146 = v118;
          v118 = 0;
          goto LABEL_22;
        }

        if (v118)
        {
          objc_opt_class();
          v155 = objc_msgSend_cascadedStyleWithIdentifier_(v491, v147, v151, v152, v153, v154, v118, v148, v149, v150);
          v146 = TSUDynamicCast();

          if (v146)
          {
            v168 = objc_msgSend_p_realTOCEntryStyleFromFakeTOCEntryStyle_context_(self, v156, v159, v160, v161, v162, v146, v488, v157, v158);
            if (v109 == 1)
            {
              objc_msgSend_addIndexedStyle_withEntryStyle_(v489, v163, v169, v170, v171, v172, v108, v168, v166, v167);
            }

            v173 = objc_msgSend_styleIdentifier(v146, v163, v169, v170, v171, v172, v164, v165, v166, v167);
            isEqualToString = objc_msgSend_isEqualToString_(v173, v174, v178, v179, v180, v181, v487, v175, v176, v177);

            if (isEqualToString)
            {
              v192 = objc_msgSend_stylesheet(v168, v183, v188, v189, v190, v191, v184, v185, v186, v187);
              objc_msgSend_setIdentifier_ofStyle_(v192, v193, v196, v197, v198, v199, v486, v168, v194, v195);
            }

            v200 = objc_msgSend_rootAncestor(v168, v183, v188, v189, v190, v191, v184, v185, v186, v187);
            if ((objc_msgSend_containsObject_(v490, v201, v205, v206, v207, v208, v200, v202, v203, v204) & 1) == 0)
            {
              objc_msgSend_addObject_(v490, v209, v214, v215, v216, v217, v200, v211, v212, v213);
            }

            v218 = objc_msgSend_bodyStorage(self, v209, v214, v215, v216, v217, v210, v211, v212, v213);
            objc_msgSend_replaceAllOccurrencesOfStyle_withStyle_undoTransaction_(v218, v219, v221, v222, v223, v224, v146, v168, 0, v220);
          }

LABEL_22:
        }

        objc_msgSend_removeValueForProperty_(v108, v138, v142, v143, v144, v145, 109, v139, v140, v141);
        objc_msgSend_removeValueForProperty_(v108, v225, v229, v230, v231, v232, 108, v226, v227, v228);
      }
    }

    v96 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v233, v235, v236, v237, v238, &v499, v505, 16, v234);
  }

  while (v96);
LABEL_26:

  v248 = objc_msgSend_stylesheet(self, v239, v244, v245, v246, v247, v240, v241, v242, v243);
  v249 = *MEMORY[0x277D81058];
  v258 = objc_msgSend_styleWithIdentifier_(v248, v250, v254, v255, v256, v257, *MEMORY[0x277D81058], v251, v252, v253);
  v259 = v258 == 0;

  if (v259)
  {
    v269 = objc_alloc(MEMORY[0x277D80F40]);
    v279 = objc_msgSend_context(self, v270, v275, v276, v277, v278, v271, v272, v273, v274);
    v280 = sub_275FFFC3C(v279);
    v287 = objc_msgSend_localizedStringForKey_value_table_(v280, v281, v283, v284, v285, v286, @"TOC", &stru_288501738, @"Pages", v282);
    v297 = objc_msgSend_theme(self, v288, v293, v294, v295, v296, v289, v290, v291, v292);
    v307 = objc_msgSend_bodyStyle(v297, v298, v303, v304, v305, v306, v299, v300, v301, v302);
    v314 = objc_msgSend_initWithContext_name_basedOnParagraphStyle_(v269, v308, v310, v311, v312, v313, v279, v287, v307, v309);

    v324 = objc_msgSend_stylesheet(self, v315, v320, v321, v322, v323, v316, v317, v318, v319);
    objc_msgSend_addStyle_withIdentifier_(v324, v325, v328, v329, v330, v331, v314, v249, v326, v327);

    objc_msgSend_insertObject_atIndex_(v490, v332, v335, v336, v337, v338, v314, 0, v333, v334);
  }

  v339 = objc_msgSend_indexedStyles(v489, v260, v265, v266, v267, v268, v261, v262, v263, v264);
  v349 = objc_msgSend_count(v339, v340, v345, v346, v347, v348, v341, v342, v343, v344) == 0;

  if (v349)
  {
    v360 = sub_275FFFC3C(v350);
    v367 = objc_msgSend_localizedStringForKey_value_table_(v360, v361, v363, v364, v365, v366, @"Generic TOC", &stru_288501738, @"Pages", v362);
    objc_msgSend_setDisplayName_(v489, v368, v372, v373, v374, v375, v367, v369, v370, v371);

    v385 = objc_msgSend_stylesheet(self, v376, v381, v382, v383, v384, v377, v378, v379, v380);
    v394 = objc_msgSend_styleWithIdentifier_(v385, v386, v390, v391, v392, v393, v249, v387, v388, v389);

    if (v394)
    {
      v497 = 0u;
      v498 = 0u;
      v495 = 0u;
      v496 = 0u;
      v403 = objc_msgSend_theme(self, v395, 0, v400, v401, v402, v396, v397, v398, v399);
      v412 = objc_msgSend_presetsOfKind_(v403, v404, v408, v409, v410, v411, *MEMORY[0x277D80BB0], v405, v406, v407);

      v424 = objc_msgSend_countByEnumeratingWithState_objects_count_(v412, v413, v415, v416, v417, v418, &v495, v504, 16, v414);
      if (v424)
      {
        v429 = *v496;
        do
        {
          for (j = 0; j != v424; ++j)
          {
            if (*v496 != v429)
            {
              objc_enumerationMutation(v412);
            }

            v431 = *(*(&v495 + 1) + 8 * j);
            v432 = objc_msgSend_presetIdentifier(v431, v419, v425, v426, v427, v428, v420, v421, v422, v423);
            v441 = objc_msgSend_containsObject_(&unk_28850DCB8, v433, v437, v438, v439, v440, v432, v434, v435, v436);

            if (v441)
            {
              v442 = objc_msgSend_paragraphStyle(v431, v419, v425, v426, v427, v428, v420, v421, v422, v423);
              objc_msgSend_addIndexedStyle_withEntryStyle_(v489, v443, v446, v447, v448, v449, v442, v394, v444, v445);
            }
          }

          v424 = objc_msgSend_countByEnumeratingWithState_objects_count_(v412, v419, v425, v426, v427, v428, &v495, v504, 16, v423);
        }

        while (v424);
      }
    }
  }

  v450 = objc_msgSend_theme(self, v351, v356, v357, v358, v359, v352, v353, v354, v355);
  v503 = v489;
  v458 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v451, v454, v455, v456, v457, &v503, 1, v452, v453);
  objc_msgSend_setPresets_ofKind_(v450, v459, v462, v463, v464, v465, v458, v485, v460, v461);

  v475 = objc_msgSend_theme(self, v466, v471, v472, v473, v474, v467, v468, v469, v470);
  objc_msgSend_setPresets_ofKind_(v475, v476, v479, v480, v481, v482, v490, *MEMORY[0x277D80B90], v477, v478);

  v483 = objc_opt_new();
  obsoleteTOCStyles = self->_obsoleteTOCStyles;
  self->_obsoleteTOCStyles = v483;
}

- (id)p_realTOCEntryStyleFromFakeTOCEntryStyle:(id)style context:(id)context
{
  styleCopy = style;
  contextCopy = context;
  v21 = objc_msgSend_objectForKeyedSubscript_(contextCopy, v8, v12, v13, v14, v15, styleCopy, v9, v10, v11);
  if (!v21)
  {
    v26 = objc_msgSend_parent(styleCopy, v16, v22, v23, v24, v25, v17, v18, v19, v20);

    if (v26)
    {
      v36 = objc_msgSend_parent(styleCopy, v27, v32, v33, v34, v35, v28, v29, v30, v31);
      v44 = objc_msgSend_p_realTOCEntryStyleFromFakeTOCEntryStyle_context_(self, v37, v40, v41, v42, v43, v36, contextCopy, v38, v39);

      v54 = objc_msgSend_propertyMap(styleCopy, v45, v50, v51, v52, v53, v46, v47, v48, v49);
      v64 = objc_msgSend_properties(MEMORY[0x277D80F40], v55, v60, v61, v62, v63, v56, v57, v58, v59);
      objc_msgSend_filterWithProperties_(v54, v65, v69, v70, v71, v72, v64, v66, v67, v68);

      v82 = objc_msgSend_stylesheet(self, v73, v78, v79, v80, v81, v74, v75, v76, v77);
      v21 = objc_msgSend_variationOfStyle_propertyMap_(v82, v83, v86, v87, v88, v89, v44, v54, v84, v85);
    }

    else
    {
      v90 = objc_msgSend_name(styleCopy, v27, v32, v33, v34, v35, v28, v29, v30, v31);

      if (!v90)
      {
        v100 = MEMORY[0x277D81150];
        v101 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v91, v96, v97, v98, v99, "[TPDocumentRoot p_realTOCEntryStyleFromFakeTOCEntryStyle:context:]", v93, v94, v95);
        v110 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v102, v106, v107, v108, v109, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm", v103, v104, v105);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v100, v111, v112, v113, v114, v115, v101, v110, 1420, 0, "invalid nil value for '%{public}s'", "fakeStyle.name");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v116, v121, v122, v123, v124, v117, v118, v119, v120);
      }

      v125 = objc_msgSend_name(styleCopy, v91, v96, v97, v98, v99, v92, v93, v94, v95);
      v44 = v125;
      if (!v125 || !objc_msgSend_length(v125, v126, v131, v132, v133, v134, v127, v128, v129, v130))
      {

        v44 = @"TOC Unknown";
      }

      v135 = objc_alloc(MEMORY[0x277D80F40]);
      v145 = objc_msgSend_context(self, v136, v141, v142, v143, v144, v137, v138, v139, v140);
      v21 = objc_msgSend_initWithContext_name_basedOnParagraphStyle_(v135, v146, v148, v149, v150, v151, v145, v44, styleCopy, v147);

      v54 = objc_msgSend_stylesheet(self, v152, v157, v158, v159, v160, v153, v154, v155, v156);
      objc_msgSend_addStyle_(v54, v161, v165, v166, v167, v168, v21, v162, v163, v164);
    }

    objc_msgSend_setObject_forKeyedSubscript_(contextCopy, v169, v172, v173, v174, v175, v21, styleCopy, v170, v171);
  }

  return v21;
}

- (void)p_upgradeTOCModelForUnity20
{
  v288 = *MEMORY[0x277D85DE8];
  v280 = 0u;
  v281 = 0u;
  v282 = 0u;
  v283 = 0u;
  v9 = objc_msgSend_stylesheet(self, a2, 0, v6, v7, v8, v2, v3, v4, v5);
  v10 = objc_opt_class();
  v19 = objc_msgSend_stylesOfClass_(v9, v11, v15, v16, v17, v18, v10, v12, v13, v14);

  v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, v22, v23, v24, v25, &v280, v287, 16, v21);
  if (v31)
  {
    v36 = *v281;
    do
    {
      v37 = 0;
      do
      {
        if (*v281 != v36)
        {
          objc_enumerationMutation(v19);
        }

        objc_msgSend_addMissingClassProperties(*(*(&v280 + 1) + 8 * v37++), v26, v32, v33, v34, v35, v27, v28, v29, v30);
      }

      while (v31 != v37);
      v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v26, v32, v33, v34, v35, &v280, v287, 16, v30);
    }

    while (v31);
  }

  v47 = objc_msgSend_set(MEMORY[0x277CBEB58], v38, v43, v44, v45, v46, v39, v40, v41, v42);
  v257 = objc_msgSend_set(MEMORY[0x277CBEB58], v48, v53, v54, v55, v56, v49, v50, v51, v52);
  v66 = objc_msgSend_theme(self, v57, v62, v63, v64, v65, v58, v59, v60, v61);
  v75 = objc_msgSend_presetsOfKind_(v66, v67, v71, v72, v73, v74, *MEMORY[0x277D80B98], v68, v69, v70);

  v278 = 0u;
  v279 = 0u;
  v276 = 0u;
  v277 = 0u;
  obj = v75;
  v87 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v76, v78, v79, v80, v81, &v276, v286, 16, v77);
  if (v87)
  {
    v91 = *v277;
    do
    {
      v92 = 0;
      do
      {
        if (*v277 != v91)
        {
          objc_enumerationMutation(obj);
        }

        v93 = *(*(&v276 + 1) + 8 * v92);
        v272 = 0u;
        v273 = 0u;
        v274 = 0u;
        v275 = 0u;
        v94 = objc_msgSend_indexedStyles(v93, v82, 0, v88, v89, v90, v83, v84, v85, v86);
        v105 = objc_msgSend_countByEnumeratingWithState_objects_count_(v94, v95, v97, v98, v99, v100, &v272, v285, 16, v96);
        if (v105)
        {
          v110 = *v273;
          do
          {
            v111 = 0;
            do
            {
              if (*v273 != v110)
              {
                objc_enumerationMutation(v94);
              }

              v112 = objc_msgSend_entryStyleForParagraphStyle_(v93, v101, v106, v107, v108, v109, *(*(&v272 + 1) + 8 * v111), v102, v103, v104);
              objc_msgSend_addObject_(v47, v113, v117, v118, v119, v120, v112, v114, v115, v116);

              ++v111;
            }

            while (v105 != v111);
            v105 = objc_msgSend_countByEnumeratingWithState_objects_count_(v94, v101, v106, v107, v108, v109, &v272, v285, 16, v104);
          }

          while (v105);
        }

        ++v92;
      }

      while (v92 != v87);
      v87 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v82, v121, v88, v89, v90, &v276, v286, 16, v86);
    }

    while (v87);
  }

  v131 = objc_msgSend_bodyStorage(self, v122, v127, v128, v129, v130, v123, v124, v125, v126);
  v141 = objc_msgSend_range(v131, v132, v137, v138, v139, v140, v133, v134, v135, v136);
  v143 = v142;

  v153 = objc_msgSend_bodyStorage(self, v144, v149, v150, v151, v152, v145, v146, v147, v148);
  v154 = objc_opt_class();
  v269[0] = MEMORY[0x277D85DD0];
  v269[1] = 3221225472;
  v269[2] = sub_27600A8F8;
  v269[3] = &unk_27A6A8EF8;
  v256 = v47;
  v270 = v256;
  v155 = v257;
  v271 = v155;
  objc_msgSend_enumerateAttachmentsOfClass_inTextRange_usingBlock_(v153, v156, v157, v158, v159, v160, v154, v141, v143, v269);

  v267 = 0u;
  v268 = 0u;
  v265 = 0u;
  v266 = 0u;
  v259 = v155;
  v172 = objc_msgSend_countByEnumeratingWithState_objects_count_(v259, v161, v163, v164, v165, v166, &v265, v284, 16, v162);
  if (v172)
  {
    v260 = *v266;
    do
    {
      v177 = 0;
      do
      {
        if (*v266 != v260)
        {
          objc_enumerationMutation(v259);
        }

        v178 = objc_msgSend_unsignedIntegerValue(*(*(&v265 + 1) + 8 * v177), v167, v173, v174, v175, v176, v168, v169, v170, v171, v256);
        v188 = objc_msgSend_bodyStorage(self, v179, v184, v185, v186, v187, v180, v181, v182, v183);
        v197 = objc_msgSend_attachmentAtCharIndex_(v188, v189, v193, v194, v195, v196, v178, v190, v191, v192);

        objc_opt_class();
        v198 = TSUDynamicCast();
        v208 = objc_msgSend_tocInfo(v198, v199, v204, v205, v206, v207, v200, v201, v202, v203);
        v218 = objc_msgSend_tocSettings(v208, v209, v214, v215, v216, v217, v210, v211, v212, v213);
        v228 = objc_msgSend_copyUsingDeepCopy(v218, v219, v224, v225, v226, v227, v220, v221, v222, v223);

        v238 = objc_msgSend_indexedStyles(v228, v229, v234, v235, v236, v237, v230, v231, v232, v233);
        v262[0] = MEMORY[0x277D85DD0];
        v262[1] = 3221225472;
        v262[2] = sub_27600AAE8;
        v262[3] = &unk_27A6A8F20;
        v239 = v228;
        v263 = v239;
        selfCopy = self;
        objc_msgSend_enumerateObjectsUsingBlock_(v238, v240, v244, v245, v246, v247, v262, v241, v242, v243);

        objc_msgSend_setTOCSettings_(v208, v248, v252, v253, v254, v255, v239, v249, v250, v251);
        ++v177;
      }

      while (v172 != v177);
      v172 = objc_msgSend_countByEnumeratingWithState_objects_count_(v259, v167, v173, v174, v175, v176, &v265, v284, 16, v171);
    }

    while (v172);
  }
}

- (void)p_initializeShowInBookmarksListParagraphStylesProperty
{
  v128 = *MEMORY[0x277D85DE8];
  v11 = objc_msgSend_theme(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v12 = *MEMORY[0x277D80B98];
  v21 = objc_msgSend_presetsOfKind_(v11, v13, v17, v18, v19, v20, *MEMORY[0x277D80B98], v14, v15, v16);
  v31 = objc_msgSend_firstObject(v21, v22, v27, v28, v29, v30, v23, v24, v25, v26);

  if (!v31)
  {
    v39 = objc_alloc(MEMORY[0x277D80F50]);
    v49 = objc_msgSend_context(self, v40, v45, v46, v47, v48, v41, v42, v43, v44);
    v31 = objc_msgSend_initWithContext_(v39, v50, v54, v55, v56, v57, v49, v51, v52, v53);

    objc_msgSend_addPreset_ofKind_(v11, v58, v61, v62, v63, v64, v31, v12, v59, v60);
  }

  v124 = 0u;
  v125 = 0u;
  v122 = 0u;
  v123 = 0u;
  v65 = objc_msgSend_presetsOfKind_(v11, v32, 0, v36, v37, v38, *MEMORY[0x277D80B70], v33, v34, v35);
  v76 = objc_msgSend_countByEnumeratingWithState_objects_count_(v65, v66, v68, v69, v70, v71, &v122, v127, 16, v67);
  if (v76)
  {
    v81 = *v123;
    do
    {
      for (i = 0; i != v76; ++i)
      {
        if (*v123 != v81)
        {
          objc_enumerationMutation(v65);
        }

        v83 = *(*(&v122 + 1) + 8 * i);
        v84 = objc_msgSend_showInTOCForParagraphStyle_(v31, v72, v77, v78, v79, v80, v83, v73, v74, v75);
        objc_msgSend_setIntValue_forProperty_(v83, v85, v88, v89, v90, v91, v84, 121, v86, v87);
        v120 = 0u;
        v121 = 0u;
        v118 = 0u;
        v119 = 0u;
        v100 = objc_msgSend_children(v83, v92, 0, v97, v98, v99, v93, v94, v95, v96, 0);
        v111 = objc_msgSend_countByEnumeratingWithState_objects_count_(v100, v101, v103, v104, v105, v106, &v118, v126, 16, v102);
        if (v111)
        {
          v116 = *v119;
          do
          {
            for (j = 0; j != v111; ++j)
            {
              if (*v119 != v116)
              {
                objc_enumerationMutation(v100);
              }

              objc_msgSend_removeValueForProperty_(*(*(&v118 + 1) + 8 * j), v107, v112, v113, v114, v115, 121, v108, v109, v110);
            }

            v111 = objc_msgSend_countByEnumeratingWithState_objects_count_(v100, v107, v112, v113, v114, v115, &v118, v126, 16, v110);
          }

          while (v111);
        }
      }

      v76 = objc_msgSend_countByEnumeratingWithState_objects_count_(v65, v72, v77, v78, v79, v80, &v122, v127, 16, v75);
    }

    while (v76);
  }
}

- (void)setStylesheet:(id)stylesheet andThemeForImport:(id)import
{
  stylesheetCopy = stylesheet;
  importCopy = import;
  if (!stylesheetCopy)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v13, v14, v15, v16, "[TPDocumentRoot setStylesheet:andThemeForImport:]", v9, v10, v11);
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v23, v24, v25, v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm", v20, v21, v22);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v28, v29, v30, v31, v32, v18, v27, 1670, 0, "invalid nil value for '%{public}s'", "inStylesheet");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v38, v39, v40, v41, v34, v35, v36, v37);
  }

  if (!importCopy)
  {
    v42 = MEMORY[0x277D81150];
    v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v13, v14, v15, v16, "[TPDocumentRoot setStylesheet:andThemeForImport:]", v9, v10, v11);
    v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, v48, v49, v50, v51, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm", v45, v46, v47);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v42, v53, v54, v55, v56, v57, v43, v52, 1671, 0, "invalid nil value for '%{public}s'", "inTheme");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v58, v63, v64, v65, v66, v59, v60, v61, v62);
  }

  v67 = objc_msgSend_documentStylesheet(importCopy, v7, v13, v14, v15, v16, v8, v9, v10, v11);

  if (v67 != stylesheetCopy)
  {
    v77 = MEMORY[0x277D81150];
    v78 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v68, v73, v74, v75, v76, "[TPDocumentRoot setStylesheet:andThemeForImport:]", v70, v71, v72);
    v87 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v79, v83, v84, v85, v86, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm", v80, v81, v82);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v77, v88, v89, v90, v91, v92, v78, v87, 1672, 0, "Invalid parameter not satisfying: %{public}s", "inStylesheet == inTheme.documentStylesheet");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v93, v98, v99, v100, v101, v94, v95, v96, v97);
  }

  objc_msgSend_willModify(self, v68, v73, v74, v75, v76, v69, v70, v71, v72);
  objc_opt_class();
  v102 = TSUDynamicCast();
  objc_storeStrong(&self->_stylesheet, stylesheet);
  theme = self->_theme;
  self->_theme = v102;

  if (self->_needsInitialization)
  {
    objc_msgSend_pFinishInitialization(self, v104, v109, v110, v111, v112, v105, v106, v107, v108);
  }
}

- (void)setTheme:(id)theme
{
  themeCopy = theme;
  objc_msgSend_willModify(self, v4, v9, v10, v11, v12, v5, v6, v7, v8);
  objc_opt_class();
  v13 = TSUDynamicCast();
  theme = self->_theme;
  self->_theme = v13;

  if (self->_needsInitialization)
  {
    objc_msgSend_pFinishInitialization(self, v15, v20, v21, v22, v23, v16, v17, v18, v19);
  }
}

- (void)setThemeForTemplateImport:(id)import
{
  importCopy = import;
  objc_opt_class();
  v4 = TSUDynamicCast();
  objc_msgSend_setTheme_(self, v5, v9, v10, v11, v12, v4, v6, v7, v8);
}

- (void)setFloatingDrawables:(id)drawables
{
  drawablesCopy = drawables;
  if (self->_floatingDrawables != drawablesCopy)
  {
    objc_msgSend_willModify(self, v5, v10, v11, v12, v13, v6, v7, v8, v9);
    v23 = objc_msgSend_defaultContext(MEMORY[0x277D805F0], v14, v19, v20, v21, v22, v15, v16, v17, v18);
    v24 = self->_floatingDrawables;
    objc_msgSend_willBeRemovedFromDocumentRoot_(v24, v25, v29, v30, v31, v32, self, v26, v27, v28);
    objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(drawablesCopy, v33, v36, v37, v38, v39, self, v23, v34, v35);
    objc_storeStrong(&self->_floatingDrawables, drawables);
    objc_msgSend_wasRemovedFromDocumentRoot_(v24, v40, v44, v45, v46, v47, self, v41, v42, v43);
    objc_msgSend_wasAddedToDocumentRoot_dolcContext_(drawablesCopy, v48, v51, v52, v53, v54, self, v23, v49, v50);
  }
}

- (void)setFlowInfoContainer:(id)container
{
  containerCopy = container;
  if (self->_flowInfoContainer != containerCopy)
  {
    objc_msgSend_willModify(self, v5, v10, v11, v12, v13, v6, v7, v8, v9);
    v23 = objc_msgSend_defaultContext(MEMORY[0x277D805F0], v14, v19, v20, v21, v22, v15, v16, v17, v18);
    v24 = self->_flowInfoContainer;
    objc_msgSend_willBeRemovedFromDocumentRoot_(v24, v25, v29, v30, v31, v32, self, v26, v27, v28);
    objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(containerCopy, v33, v36, v37, v38, v39, self, v23, v34, v35);
    objc_storeStrong(&self->_flowInfoContainer, container);
    objc_msgSend_wasRemovedFromDocumentRoot_(v24, v40, v44, v45, v46, v47, self, v41, v42, v43);
    objc_msgSend_wasAddedToDocumentRoot_dolcContext_(containerCopy, v48, v51, v52, v53, v54, self, v23, v49, v50);
  }
}

- (void)setStylesheetForUpgradeToSingleStylesheet:(id)stylesheet
{
  stylesheetCopy = stylesheet;
  if (self->_stylesheet != stylesheetCopy)
  {
    objc_msgSend_willModifyForUpgrade(self, v5, v10, v11, v12, v13, v6, v7, v8, v9);
    objc_storeStrong(&self->_stylesheet, stylesheet);
  }
}

- (void)saveToArchiver:(id)archiver
{
  v859 = *MEMORY[0x277D85DE8];
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v10 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v3, v6, v7, v8, v9, sub_276013A04, *off_2812F85B8, v4, v5);

  v852[0] = MEMORY[0x277D85DD0];
  v852[1] = 3221225472;
  v852[2] = sub_27600CE88;
  v852[3] = &unk_27A6A84B8;
  v855 = v10;
  v853 = archiverCopy;
  selfCopy = self;
  v836 = v853;
  v837 = v10;
  objc_msgSend_pushScopeForField_message_usingBlock_(v853, v11, v13, v14, v15, v16, 15, v10, v852, v12);
  v850 = 0u;
  v851 = 0u;
  v848 = 0u;
  v849 = 0u;
  obj = objc_msgSend_flowInfos(self->_flowInfoContainer, v17, 0, v22, v23, v24, v18, v19, v20, v21);
  v835 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v25, v27, v28, v29, v30, &v848, v858, 16, v26);
  if (v835)
  {
    v834 = *v849;
    do
    {
      for (i = 0; i != v835; ++i)
      {
        if (*v849 != v834)
        {
          objc_enumerationMutation(obj);
        }

        v39 = *(*(&v848 + 1) + 8 * i);
        v844 = 0u;
        v845 = 0u;
        v846 = 0u;
        v847 = 0u;
        v40 = objc_msgSend_textboxes(v39, v31, 0, v36, v37, v38, v32, v33, v34, v35);
        v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v40, v41, v43, v44, v45, v46, &v844, v857, 16, v42);
        if (v51)
        {
          v56 = *v845;
          do
          {
            for (j = 0; j != v51; ++j)
            {
              if (*v845 != v56)
              {
                objc_enumerationMutation(v40);
              }

              if (objc_msgSend_pageIndexForDrawable_(self->_floatingDrawables, v47, v52, v53, v54, v55, *(*(&v844 + 1) + 8 * j), v48, v49, v50) == 0x7FFFFFFFFFFFFFFFLL)
              {
                v58 = MEMORY[0x277D81150];
                v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, v52, v53, v54, v55, "[TPDocumentRoot saveToArchiver:]", v48, v49, v50);
                v68 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v60, v64, v65, v66, v67, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm", v61, v62, v63);
                objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v58, v69, v70, v71, v72, v73, v59, v68, 1760, 0, "Archiving linked text box which is not on any page.");

                objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v74, v79, v80, v81, v82, v75, v76, v77, v78);
              }
            }

            v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v40, v47, v52, v53, v54, v55, &v844, v857, 16, v50);
          }

          while (v51);
        }
      }

      v835 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v31, v83, v36, v37, v38, &v848, v858, 16, v35);
    }

    while (v835);
  }

  if (!self->_needsInitialization)
  {
    objc_msgSend_setIgnoreAndPreserveRuleForField_message_(v836, v84, v89, v90, v91, v92, 47, v10, v87, v88);
    theme = self->_theme;
    *(v10 + 16) |= 0x40u;
    v101 = *(v10 + 168);
    if (!v101)
    {
      v102 = *(v10 + 8);
      if (v102)
      {
        v102 = *(v102 & 0xFFFFFFFFFFFFFFFELL);
      }

      v101 = MEMORY[0x277C92D60](v102);
      *(v10 + 168) = v101;
    }

    objc_msgSend_setStrongReference_message_(v836, v93, v96, v97, v98, v99, theme, v101, v94, v95);
    stylesheet = self->_stylesheet;
    *(v10 + 16) |= 4u;
    v111 = *(v10 + 136);
    if (!v111)
    {
      v112 = *(v10 + 8);
      if (v112)
      {
        v112 = *(v112 & 0xFFFFFFFFFFFFFFFELL);
      }

      v111 = MEMORY[0x277C92D60](v112);
      *(v10 + 136) = v111;
    }

    objc_msgSend_setStrongReference_message_(v836, v103, v106, v107, v108, v109, stylesheet, v111, v104, v105);
    drawablesZOrder = self->_drawablesZOrder;
    *(v10 + 16) |= 0x1000u;
    v121 = *(v10 + 216);
    if (!v121)
    {
      v122 = *(v10 + 8);
      if (v122)
      {
        v122 = *(v122 & 0xFFFFFFFFFFFFFFFELL);
      }

      v121 = MEMORY[0x277C92D60](v122);
      *(v10 + 216) = v121;
    }

    objc_msgSend_setStrongReference_message_(v836, v113, v116, v117, v118, v119, drawablesZOrder, v121, v114, v115);
    floatingDrawables = self->_floatingDrawables;
    *(v10 + 16) |= 8u;
    v131 = *(v10 + 144);
    if (!v131)
    {
      v132 = *(v10 + 8);
      if (v132)
      {
        v132 = *(v132 & 0xFFFFFFFFFFFFFFFELL);
      }

      v131 = MEMORY[0x277C92D60](v132);
      *(v10 + 144) = v131;
    }

    objc_msgSend_setStrongReference_message_(v836, v123, v126, v127, v128, v129, floatingDrawables, v131, v124, v125);
    flowInfoContainer = self->_flowInfoContainer;
    *(v10 + 16) |= 0x8000u;
    v141 = *(v10 + 240);
    if (!v141)
    {
      v142 = *(v10 + 8);
      if (v142)
      {
        v142 = *(v142 & 0xFFFFFFFFFFFFFFFELL);
      }

      v141 = MEMORY[0x277C92D60](v142);
      *(v10 + 240) = v141;
    }

    objc_msgSend_setStrongReference_message_(v836, v133, v136, v137, v138, v139, flowInfoContainer, v141, v134, v135);
    bodyStorage = self->_bodyStorage;
    *(v10 + 16) |= 0x10u;
    v151 = *(v10 + 152);
    if (!v151)
    {
      v152 = *(v10 + 8);
      if (v152)
      {
        v152 = *(v152 & 0xFFFFFFFFFFFFFFFELL);
      }

      v151 = MEMORY[0x277C92D60](v152);
      *(v10 + 152) = v151;
    }

    objc_msgSend_setStrongReference_message_(v836, v143, v146, v147, v148, v149, bodyStorage, v151, v144, v145);
    settings = self->_settings;
    *(v10 + 16) |= 0x80u;
    v161 = *(v10 + 176);
    if (!v161)
    {
      v162 = *(v10 + 8);
      if (v162)
      {
        v162 = *(v162 & 0xFFFFFFFFFFFFFFFELL);
      }

      v161 = MEMORY[0x277C92D60](v162);
      *(v10 + 176) = v161;
    }

    objc_msgSend_setStrongReference_message_(v836, v153, v156, v157, v158, v159, settings, v161, v154, v155);
    objc_msgSend_setStrongReferenceArray_message_(v836, v163, v166, v167, v168, v169, self->_citationRecords, v10 + 24, v164, v165);
    objc_msgSend_setStrongReferenceArray_message_(v836, v170, v173, v174, v175, v176, self->_obsoleteTOCStyles, v10 + 48, v171, v172);
    objc_msgSend_setStrongReferenceArray_message_(v836, v177, v180, v181, v182, v183, self->_changeSessionHistory, v10 + 72, v178, v179);
    mostRecentChangeSession = self->_mostRecentChangeSession;
    if (mostRecentChangeSession)
    {
      *(v10 + 16) |= 0x800u;
      v185 = *(v10 + 208);
      if (!v185)
      {
        v186 = *(v10 + 8);
        if (v186)
        {
          v186 = *(v186 & 0xFFFFFFFFFFFFFFFELL);
        }

        v185 = MEMORY[0x277C92D60](v186);
        *(v10 + 208) = v185;
      }

      objc_msgSend_setStrongReference_message_(v836, v84, v89, v90, v91, v92, mostRecentChangeSession, v185, v87, v88);
    }
  }

  usesSingleHeaderFooter = self->_usesSingleHeaderFooter;
  if (usesSingleHeaderFooter)
  {
    v188 = 0x1000000;
  }

  else
  {
    v188 = 0;
  }

  *(v10 + 16) = *(v10 + 16) & 0xFEFFFFFF | v188;
  *(v10 + 284) = usesSingleHeaderFooter;
  v89.n128_u64[0] = *&self->_pageSize.width;
  if ((v89.n128_u64[0] & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_60;
  }

  if (v89.n128_f64[0] > 0.0 && (v90.n128_u64[0] = 0x47EFFFFFE0000000, v89.n128_f64[0] > 3.40282347e38))
  {
    v348 = MEMORY[0x277D81150];
    v349 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v84, v89, v90, v91, v92, "[TPDocumentRoot saveToArchiver:]", v86, v87, v88);
    v358 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v350, v354, v355, v356, v357, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm", v351, v352, v353);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v348, v359, v360, v361, v362, v363, v349, v358, 1793, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v364, v369, v370, v371, v372, v365, v366, v367, v368);
    v373 = 2139095039;
  }

  else
  {
    if (v89.n128_f64[0] >= 0.0 || (v90.n128_u64[0] = 0xC7EFFFFFE0000000, v89.n128_f64[0] >= -3.40282347e38))
    {
LABEL_60:
      v189 = v89.n128_f64[0];
      goto LABEL_61;
    }

    v607 = MEMORY[0x277D81150];
    v608 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v84, v89, v90, v91, v92, "[TPDocumentRoot saveToArchiver:]", v86, v87, v88);
    v617 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v609, v613, v614, v615, v616, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm", v610, v611, v612);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v607, v618, v619, v620, v621, v622, v608, v617, 1793, 0, "Out-of-bounds type assignment was clamped to min");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v623, v628, v629, v630, v631, v624, v625, v626, v627);
    v373 = -8388609;
  }

  v189 = *&v373;
LABEL_61:
  *(v10 + 16) |= 0x20000u;
  *(v10 + 256) = v189;
  v89.n128_u64[0] = *&self->_pageSize.height;
  if ((v89.n128_u64[0] & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_66:
    v190 = v89.n128_f64[0];
    goto LABEL_67;
  }

  if (v89.n128_f64[0] > 0.0 && (v90.n128_u64[0] = 0x47EFFFFFE0000000, v89.n128_f64[0] > 3.40282347e38))
  {
    v374 = MEMORY[0x277D81150];
    v375 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v84, v89, v90, v91, v92, "[TPDocumentRoot saveToArchiver:]", v86, v87, v88);
    v384 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v376, v380, v381, v382, v383, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm", v377, v378, v379);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v374, v385, v386, v387, v388, v389, v375, v384, 1794, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v390, v395, v396, v397, v398, v391, v392, v393, v394);
    v399 = 2139095039;
  }

  else
  {
    if (v89.n128_f64[0] >= 0.0)
    {
      goto LABEL_66;
    }

    v90.n128_u64[0] = 0xC7EFFFFFE0000000;
    if (v89.n128_f64[0] >= -3.40282347e38)
    {
      goto LABEL_66;
    }

    v632 = MEMORY[0x277D81150];
    v633 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v84, v89, v90, v91, v92, "[TPDocumentRoot saveToArchiver:]", v86, v87, v88);
    v642 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v634, v638, v639, v640, v641, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm", v635, v636, v637);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v632, v643, v644, v645, v646, v647, v633, v642, 1794, 0, "Out-of-bounds type assignment was clamped to min");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v648, v653, v654, v655, v656, v649, v650, v651, v652);
    v399 = -8388609;
  }

  v190 = *&v399;
LABEL_67:
  *(v10 + 16) |= 0x40000u;
  *(v10 + 260) = v190;
  v89.n128_u64[0] = *&self->_pageScale;
  if ((v89.n128_u64[0] & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_72:
    v89.n128_f32[0] = v89.n128_f64[0];
    goto LABEL_73;
  }

  if (v89.n128_f64[0] > 0.0 && (v90.n128_u64[0] = 0x47EFFFFFE0000000, v89.n128_f64[0] > 3.40282347e38))
  {
    v400 = MEMORY[0x277D81150];
    v401 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v84, v89, v90, v91, v92, "[TPDocumentRoot saveToArchiver:]", v86, v87, v88);
    v410 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v402, v406, v407, v408, v409, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm", v403, v404, v405);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v400, v411, v412, v413, v414, v415, v401, v410, 1795, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v416, v421, v422, v423, v424, v417, v418, v419, v420);
    v425 = 2139095039;
  }

  else
  {
    if (v89.n128_f64[0] >= 0.0)
    {
      goto LABEL_72;
    }

    v90.n128_u64[0] = 0xC7EFFFFFE0000000;
    if (v89.n128_f64[0] >= -3.40282347e38)
    {
      goto LABEL_72;
    }

    v657 = MEMORY[0x277D81150];
    v658 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v84, v89, v90, v91, v92, "[TPDocumentRoot saveToArchiver:]", v86, v87, v88);
    v667 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v659, v663, v664, v665, v666, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm", v660, v661, v662);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v657, v668, v669, v670, v671, v672, v658, v667, 1795, 0, "Out-of-bounds type assignment was clamped to min");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v673, v678, v679, v680, v681, v674, v675, v676, v677);
    v425 = -8388609;
  }

  v89.n128_u32[0] = v425;
LABEL_73:
  *(v10 + 16) |= 0x20000000u;
  *(v10 + 292) = v89.n128_u32[0];
  v191 = objc_msgSend_printerID(self, v84, v89, v90, v91, v92, v85, v86, v87, v88);
  *(v10 + 16) |= 1u;
  v192 = google::protobuf::internal::ArenaStringPtr::Mutable();
  objc_msgSend_tsp_saveToProtobufString_(v191, v193, v197, v198, v199, v200, v192, v194, v195, v196);

  orientation = self->_orientation;
  if (orientation >= 0x100000000)
  {
    v323 = MEMORY[0x277D81150];
    v324 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v201, v206, v207, v208, v209, "[TPDocumentRoot saveToArchiver:]", v203, v204, v205);
    v333 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v325, v329, v330, v331, v332, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm", v326, v327, v328);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v323, v334, v335, v336, v337, v338, v324, v333, 1798, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v339, v344, v345, v346, v347, v340, v341, v342, v343);
    LODWORD(orientation) = -1;
  }

  else if (orientation < 0)
  {
    v426 = MEMORY[0x277D81150];
    v427 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v201, v206, v207, v208, v209, "[TPDocumentRoot saveToArchiver:]", v203, v204, v205);
    v436 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v428, v432, v433, v434, v435, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm", v429, v430, v431);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v426, v437, v438, v439, v440, v441, v427, v436, 1798, 0, "Out-of-bounds type assignment was clamped to min");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v442, v447, v448, v449, v450, v443, v444, v445, v446);
    LODWORD(orientation) = 0;
  }

  *(v10 + 16) |= 0x40000000u;
  *(v10 + 296) = orientation;
  v211 = objc_msgSend_paperID(self, v201, v206, v207, v208, v209, v202, v203, v204, v205);
  *(v10 + 16) |= 2u;
  v212 = google::protobuf::internal::ArenaStringPtr::Mutable();
  objc_msgSend_tsp_saveToProtobufString_(v211, v213, v217, v218, v219, v220, v212, v214, v215, v216);

  v228.n128_u64[0] = *&self->_leftMargin;
  if ((v228.n128_u64[0] & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_81;
  }

  if (v228.n128_f64[0] > 0.0 && (v225.n128_u64[0] = 0x47EFFFFFE0000000, v228.n128_f64[0] > 3.40282347e38))
  {
    v451 = MEMORY[0x277D81150];
    v452 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v221, v228, v225, v226, v227, "[TPDocumentRoot saveToArchiver:]", v222, v223, v224);
    v461 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v453, v457, v458, v459, v460, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm", v454, v455, v456);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v451, v462, v463, v464, v465, v466, v452, v461, 1802, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v467, v472, v473, v474, v475, v468, v469, v470, v471);
    v476 = 2139095039;
  }

  else
  {
    if (v228.n128_f64[0] >= 0.0 || (v225.n128_u64[0] = 0xC7EFFFFFE0000000, v228.n128_f64[0] >= -3.40282347e38))
    {
LABEL_81:
      v229 = v228.n128_f64[0];
      goto LABEL_82;
    }

    v682 = MEMORY[0x277D81150];
    v683 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v221, v228, v225, v226, v227, "[TPDocumentRoot saveToArchiver:]", v222, v223, v224);
    v692 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v684, v688, v689, v690, v691, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm", v685, v686, v687);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v682, v693, v694, v695, v696, v697, v683, v692, 1802, 0, "Out-of-bounds type assignment was clamped to min");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v698, v703, v704, v705, v706, v699, v700, v701, v702);
    v476 = -8388609;
  }

  v229 = *&v476;
LABEL_82:
  *(v10 + 16) |= 0x80000u;
  *(v10 + 264) = v229;
  v228.n128_u64[0] = *&self->_rightMargin;
  if ((v228.n128_u64[0] & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_87:
    v230 = v228.n128_f64[0];
    goto LABEL_88;
  }

  if (v228.n128_f64[0] > 0.0 && (v225.n128_u64[0] = 0x47EFFFFFE0000000, v228.n128_f64[0] > 3.40282347e38))
  {
    v477 = MEMORY[0x277D81150];
    v478 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v221, v228, v225, v226, v227, "[TPDocumentRoot saveToArchiver:]", v222, v223, v224);
    v487 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v479, v483, v484, v485, v486, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm", v480, v481, v482);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v477, v488, v489, v490, v491, v492, v478, v487, 1803, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v493, v498, v499, v500, v501, v494, v495, v496, v497);
    v502 = 2139095039;
  }

  else
  {
    if (v228.n128_f64[0] >= 0.0)
    {
      goto LABEL_87;
    }

    v225.n128_u64[0] = 0xC7EFFFFFE0000000;
    if (v228.n128_f64[0] >= -3.40282347e38)
    {
      goto LABEL_87;
    }

    v707 = MEMORY[0x277D81150];
    v708 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v221, v228, v225, v226, v227, "[TPDocumentRoot saveToArchiver:]", v222, v223, v224);
    v717 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v709, v713, v714, v715, v716, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm", v710, v711, v712);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v707, v718, v719, v720, v721, v722, v708, v717, 1803, 0, "Out-of-bounds type assignment was clamped to min");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v723, v728, v729, v730, v731, v724, v725, v726, v727);
    v502 = -8388609;
  }

  v230 = *&v502;
LABEL_88:
  *(v10 + 16) |= 0x100000u;
  *(v10 + 268) = v230;
  v228.n128_u64[0] = *&self->_topMargin;
  if ((v228.n128_u64[0] & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_93:
    v231 = v228.n128_f64[0];
    goto LABEL_94;
  }

  if (v228.n128_f64[0] > 0.0 && (v225.n128_u64[0] = 0x47EFFFFFE0000000, v228.n128_f64[0] > 3.40282347e38))
  {
    v503 = MEMORY[0x277D81150];
    v504 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v221, v228, v225, v226, v227, "[TPDocumentRoot saveToArchiver:]", v222, v223, v224);
    v513 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v505, v509, v510, v511, v512, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm", v506, v507, v508);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v503, v514, v515, v516, v517, v518, v504, v513, 1804, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v519, v524, v525, v526, v527, v520, v521, v522, v523);
    v528 = 2139095039;
  }

  else
  {
    if (v228.n128_f64[0] >= 0.0)
    {
      goto LABEL_93;
    }

    v225.n128_u64[0] = 0xC7EFFFFFE0000000;
    if (v228.n128_f64[0] >= -3.40282347e38)
    {
      goto LABEL_93;
    }

    v732 = MEMORY[0x277D81150];
    v733 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v221, v228, v225, v226, v227, "[TPDocumentRoot saveToArchiver:]", v222, v223, v224);
    v742 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v734, v738, v739, v740, v741, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm", v735, v736, v737);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v732, v743, v744, v745, v746, v747, v733, v742, 1804, 0, "Out-of-bounds type assignment was clamped to min");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v748, v753, v754, v755, v756, v749, v750, v751, v752);
    v528 = -8388609;
  }

  v231 = *&v528;
LABEL_94:
  *(v10 + 16) |= 0x200000u;
  *(v10 + 272) = v231;
  v228.n128_u64[0] = *&self->_bottomMargin;
  if ((v228.n128_u64[0] & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_99:
    v232 = v228.n128_f64[0];
    goto LABEL_100;
  }

  if (v228.n128_f64[0] > 0.0 && (v225.n128_u64[0] = 0x47EFFFFFE0000000, v228.n128_f64[0] > 3.40282347e38))
  {
    v529 = MEMORY[0x277D81150];
    v530 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v221, v228, v225, v226, v227, "[TPDocumentRoot saveToArchiver:]", v222, v223, v224);
    v539 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v531, v535, v536, v537, v538, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm", v532, v533, v534);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v529, v540, v541, v542, v543, v544, v530, v539, 1805, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v545, v550, v551, v552, v553, v546, v547, v548, v549);
    v554 = 2139095039;
  }

  else
  {
    if (v228.n128_f64[0] >= 0.0)
    {
      goto LABEL_99;
    }

    v225.n128_u64[0] = 0xC7EFFFFFE0000000;
    if (v228.n128_f64[0] >= -3.40282347e38)
    {
      goto LABEL_99;
    }

    v757 = MEMORY[0x277D81150];
    v758 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v221, v228, v225, v226, v227, "[TPDocumentRoot saveToArchiver:]", v222, v223, v224);
    v767 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v759, v763, v764, v765, v766, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm", v760, v761, v762);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v757, v768, v769, v770, v771, v772, v758, v767, 1805, 0, "Out-of-bounds type assignment was clamped to min");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v773, v778, v779, v780, v781, v774, v775, v776, v777);
    v554 = -8388609;
  }

  v232 = *&v554;
LABEL_100:
  *(v10 + 16) |= 0x400000u;
  *(v10 + 276) = v232;
  v228.n128_u64[0] = *&self->_headerMargin;
  if ((v228.n128_u64[0] & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_105:
    v233 = v228.n128_f64[0];
    goto LABEL_106;
  }

  if (v228.n128_f64[0] > 0.0 && (v225.n128_u64[0] = 0x47EFFFFFE0000000, v228.n128_f64[0] > 3.40282347e38))
  {
    v555 = MEMORY[0x277D81150];
    v556 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v221, v228, v225, v226, v227, "[TPDocumentRoot saveToArchiver:]", v222, v223, v224);
    v565 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v557, v561, v562, v563, v564, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm", v558, v559, v560);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v555, v566, v567, v568, v569, v570, v556, v565, 1806, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v571, v576, v577, v578, v579, v572, v573, v574, v575);
    v580 = 2139095039;
  }

  else
  {
    if (v228.n128_f64[0] >= 0.0)
    {
      goto LABEL_105;
    }

    v225.n128_u64[0] = 0xC7EFFFFFE0000000;
    if (v228.n128_f64[0] >= -3.40282347e38)
    {
      goto LABEL_105;
    }

    v782 = MEMORY[0x277D81150];
    v783 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v221, v228, v225, v226, v227, "[TPDocumentRoot saveToArchiver:]", v222, v223, v224);
    v792 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v784, v788, v789, v790, v791, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm", v785, v786, v787);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v782, v793, v794, v795, v796, v797, v783, v792, 1806, 0, "Out-of-bounds type assignment was clamped to min");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v798, v803, v804, v805, v806, v799, v800, v801, v802);
    v580 = -8388609;
  }

  v233 = *&v580;
LABEL_106:
  *(v10 + 16) |= 0x800000u;
  *(v10 + 280) = v233;
  v228.n128_u64[0] = *&self->_footerMargin;
  if ((v228.n128_u64[0] & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_111:
    v228.n128_f32[0] = v228.n128_f64[0];
    goto LABEL_112;
  }

  if (v228.n128_f64[0] > 0.0 && (v225.n128_u64[0] = 0x47EFFFFFE0000000, v228.n128_f64[0] > 3.40282347e38))
  {
    v581 = MEMORY[0x277D81150];
    v582 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v221, v228, v225, v226, v227, "[TPDocumentRoot saveToArchiver:]", v222, v223, v224);
    v591 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v583, v587, v588, v589, v590, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm", v584, v585, v586);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v581, v592, v593, v594, v595, v596, v582, v591, 1807, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v597, v602, v603, v604, v605, v598, v599, v600, v601);
    v606 = 2139095039;
  }

  else
  {
    if (v228.n128_f64[0] >= 0.0)
    {
      goto LABEL_111;
    }

    v225.n128_u64[0] = 0xC7EFFFFFE0000000;
    if (v228.n128_f64[0] >= -3.40282347e38)
    {
      goto LABEL_111;
    }

    v807 = MEMORY[0x277D81150];
    v808 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v221, v228, v225, v226, v227, "[TPDocumentRoot saveToArchiver:]", v222, v223, v224);
    v817 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v809, v813, v814, v815, v816, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm", v810, v811, v812);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v807, v818, v819, v820, v821, v822, v808, v817, 1807, 0, "Out-of-bounds type assignment was clamped to min");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v823, v828, v829, v830, v831, v824, v825, v826, v827);
    v606 = -8388609;
  }

  v228.n128_u32[0] = v606;
LABEL_112:
  v234 = v10;
  v235 = *(v10 + 16);
  *(v10 + 288) = v228.n128_u32[0];
  *(v10 + 285) = self->_laysOutBodyVertically;
  changeTrackingEnabled = self->_changeTrackingEnabled;
  v237 = v235 | 0x16000000;
  *(v10 + 16) = v237;
  *(v10 + 286) = changeTrackingEnabled;
  if (self->_equationEnvironmentData)
  {
    objc_msgSend_setIgnoreAndPreserveRuleForField_message_(v836, v221, v228, v225, v226, v227, 45, v10, v223, v224);
    equationEnvironmentData = self->_equationEnvironmentData;
    *(v10 + 16) |= 0x4000u;
    v246 = *(v10 + 232);
    if (!v246)
    {
      v247 = *(v10 + 8);
      if (v247)
      {
        v247 = *(v247 & 0xFFFFFFFFFFFFFFFELL);
      }

      v246 = MEMORY[0x277C92D00](v247);
      *(v10 + 232) = v246;
    }

    objc_msgSend_setDataReference_message_(v836, v238, v241, v242, v243, v244, equationEnvironmentData, v246, v239, v240);
    v234 = v10;
    v237 = *(v10 + 16);
  }

  *(v234 + 16) = v237 | 0x8000000;
  *(v234 + 287) = 1;
  objc_msgSend_setIgnoreAndPreserveRuleForField_message_(v836, v221, v228, v225, v226, v227, 46, v234, v223, v224);
  if (objc_msgSend_count(self->_pageTemplates, v248, v253, v254, v255, v256, v249, v250, v251, v252))
  {
    objc_msgSend_requiresDocumentReadVersion_writeVersion_featureIdentifier_(v836, v257, v262, v263, v264, v265, *MEMORY[0x277D80988], *MEMORY[0x277D80990], @"TPPageTemplates", v261);
    objc_msgSend_setIgnoreAndPreserveRuleForField_message_(v836, v266, v269, v270, v271, v272, 48, v10, v267, v268);
    v842 = 0u;
    v843 = 0u;
    v840 = 0u;
    v841 = 0u;
    v273 = self->_pageTemplates;
    v283 = objc_msgSend_countByEnumeratingWithState_objects_count_(v273, v274, v276, v277, v278, v279, &v840, v856, 16, v275);
    if (!v283)
    {
      goto LABEL_133;
    }

    v288 = *v841;
    while (1)
    {
      for (k = 0; k != v283; ++k)
      {
        if (*v841 != v288)
        {
          objc_enumerationMutation(v273);
        }

        v290 = *(*(&v840 + 1) + 8 * k);
        v291 = v837;
        v292 = *(v837 + 112);
        if (!v292)
        {
          goto LABEL_129;
        }

        v293 = *(v837 + 104);
        v294 = *v292;
        if (v293 < *v292)
        {
          *(v837 + 104) = v293 + 1;
          objc_msgSend_setStrongReference_message_(v836, v280, v284, v285, v286, v287, v290, *&v292[2 * v293 + 2], v281, v282);
          continue;
        }

        if (v294 == *(v837 + 108))
        {
LABEL_129:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v837 + 96));
          v291 = v837;
          v292 = *(v837 + 112);
          v294 = *v292;
        }

        *v292 = v294 + 1;
        v295 = MEMORY[0x277C92D60](*(v291 + 96));
        v296 = *(v837 + 104);
        v297 = *(v837 + 112) + 8 * v296;
        *(v837 + 104) = v296 + 1;
        *(v297 + 8) = v295;
        objc_msgSend_setStrongReference_message_(v836, v298, v301, v302, v303, v304, v290, v295, v299, v300);
      }

      v283 = objc_msgSend_countByEnumeratingWithState_objects_count_(v273, v280, v284, v285, v286, v287, &v840, v856, 16, v282);
      if (!v283)
      {
LABEL_133:

        break;
      }
    }
  }

  v310 = objc_msgSend_bodyStorage(self, v257, v262, v263, v264, v265, v258, v259, v260, v261);
  if (v310)
  {
    v315 = objc_msgSend_laysOutBodyVertically(self, v305, v311, v312, v313, v314, v306, v307, v308, v309);

    if (v315)
    {
      objc_msgSend_requiresDocumentReadVersion_writeVersion_featureIdentifier_(v836, v316, v318, v319, v320, v321, *MEMORY[0x277D809A8], *MEMORY[0x277D809A8], @"TSWPVerticalText", v317);
    }
  }

  shouldUseAnchoredDrawableWrapSlop = self->_shouldUseAnchoredDrawableWrapSlop;
  *(v837 + 16) |= 0x80000000;
  *(v837 + 300) = shouldUseAnchoredDrawableWrapSlop;
}

- (void)setBodyStorage:(id)storage dolcContext:(id)context
{
  storageCopy = storage;
  contextCopy = context;
  bodyStorage = self->_bodyStorage;
  if (bodyStorage == storageCopy)
  {
    goto LABEL_19;
  }

  v9 = bodyStorage;
  objc_msgSend_willBeRemovedFromDocumentRoot_(v9, v10, v14, v15, v16, v17, self, v11, v12, v13);
  objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(storageCopy, v18, v21, v22, v23, v24, self, contextCopy, v19, v20);
  v38 = objc_msgSend_drawablesZOrder(self, v25, v30, v31, v32, v33, v26, v27, v28, v29);
  if (storageCopy && v9)
  {
    objc_msgSend_zOrderOfDrawable_(v38, v34, v39, v40, v41, v42, v9, v35, v36, v37);
  }

  else if (!v9)
  {
    v43 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_7;
  }

  v43 = objc_msgSend_zOrderOfDrawable_(v38, v34, v39, v40, v41, v42, v9, v35, v36, v37);
  objc_msgSend_removeDrawable_(v38, v44, v48, v49, v50, v51, v9, v45, v46, v47);
LABEL_7:
  objc_storeStrong(&self->_bodyStorage, storage);
  v60 = self->_bodyStorage;
  if (v60)
  {
    if (v43 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v43 = 0;
    }

    objc_msgSend_insertDrawable_atZOrder_(v38, v52, v56, v57, v58, v59, v60, v43, v54, v55);
  }

  objc_msgSend_wasRemovedFromDocumentRoot_(v9, v52, v56, v57, v58, v59, self, v53, v54, v55);
  objc_msgSend_wasAddedToDocumentRoot_dolcContext_(storageCopy, v61, v64, v65, v66, v67, self, contextCopy, v62, v63);
  v77 = self->_bodyStorage;
  if (v77)
  {
    v78 = objc_msgSend_attachmentCount(v77, v68, v73, v74, v75, v76, v69, v70, v71, v72);
    if (v78)
    {
      v79 = 0;
      v80 = v43 + 1;
      do
      {
        objc_opt_class();
        v88 = objc_msgSend_attachmentAtAttachmentIndex_outCharIndex_(self->_bodyStorage, v81, v84, v85, v86, v87, v79, 0, v82, v83);
        v89 = TSUDynamicCast();

        if (v89 && objc_msgSend_isAnchored(v89, v90, v95, v96, v97, v98, v91, v92, v93, v94))
        {
          v108 = objc_msgSend_drawable(v89, v99, v104, v105, v106, v107, v100, v101, v102, v103);
          objc_msgSend_moveDrawable_toZOrder_(v38, v109, v112, v113, v114, v115, v108, v80, v110, v111);

          ++v80;
        }

        ++v79;
      }

      while (v78 != v79);
    }
  }

LABEL_19:
}

- (BOOL)containsVerticalText
{
  if (objc_msgSend_laysOutBodyVertically(self, a2, v6, v7, v8, v9, v2, v3, v4, v5))
  {
    return 1;
  }

  v12.receiver = self;
  v12.super_class = TPDocumentRoot;
  return [(TSWPDocumentRoot *)&v12 containsVerticalText];
}

- (id)citationRecords
{
  v10 = objc_msgSend_set(MEMORY[0x277CBEB58], a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v20 = objc_msgSend_allObjects(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);

  return v20;
}

- (int64_t)contentWritingDirection
{
  if (objc_msgSend_writingDirection(self, a2, v6, v7, v8, v9, v2, v3, v4, v5) == 1)
  {
    return 0;
  }

  if (objc_msgSend_writingDirection(self, v11, v16, v17, v18, v19, v12, v13, v14, v15) == 2)
  {
    return 1;
  }

  return -1;
}

- (BOOL)freehandDrawingsRequireSpacerShape
{
  v10 = objc_msgSend_settings(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  hasBody = objc_msgSend_hasBody(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);

  return hasBody;
}

- (void)appSpecificPrepareNewDocumentWithTemplateIdentifier:(id)identifier bundle:(id)bundle documentLocale:(id)locale
{
  bundleCopy = bundle;
  localeCopy = locale;
  v119.receiver = self;
  v119.super_class = TPDocumentRoot;
  [(TSADocumentRoot *)&v119 appSpecificPrepareNewDocumentWithTemplateIdentifier:identifier bundle:bundleCopy documentLocale:localeCopy];
  self->_newDocument = 1;
  self->_shouldUseAnchoredDrawableWrapSlop = 0;
  v24 = objc_msgSend_bundleIdentifier(bundleCopy, v10, v15, v16, v17, v18, v11, v12, v13, v14);
  if (!v24)
  {
    v29 = objc_msgSend_bundlePath(bundleCopy, v19, v25, v26, v27, v28, v20, v21, v22, v23);
    v24 = objc_msgSend_lastPathComponent(v29, v30, v35, v36, v37, v38, v31, v32, v33, v34);
  }

  objc_storeStrong(&self->_printerID, *MEMORY[0x277D81648]);
  TSURoundedSize();
  v48 = v44.n128_f64[0] == *MEMORY[0x277D81640] && v45.n128_f64[0] == *(MEMORY[0x277D81640] + 8);
  if (v48 || (v44.n128_f64[0] == *MEMORY[0x277D81638] ? (v49 = v45.n128_f64[0] == *(MEMORY[0x277D81638] + 8)) : (v49 = 0), v49))
  {
    v53 = MEMORY[0x277D815E0];
  }

  else
  {
    v50 = v44.n128_f64[0] == *MEMORY[0x277D81620] && v45.n128_f64[0] == *(MEMORY[0x277D81620] + 8);
    if (v50 || (v44.n128_f64[0] == *MEMORY[0x277D81618] ? (v51 = v45.n128_f64[0] == *(MEMORY[0x277D81618] + 8)) : (v51 = 0), v51))
    {
      v53 = MEMORY[0x277D815D0];
    }

    else
    {
      v47.n128_u64[0] = *(MEMORY[0x277D81630] + 8);
      v52 = v44.n128_f64[0] == *MEMORY[0x277D81630] && v45.n128_f64[0] == v47.n128_f64[0];
      if (v52 || v44.n128_f64[0] == *MEMORY[0x277D81628] && v45.n128_f64[0] == *(MEMORY[0x277D81628] + 8))
      {
        v53 = MEMORY[0x277D815D8];
      }

      else if (v44.n128_f64[0] == *MEMORY[0x277D81600] && v45.n128_f64[0] == *(MEMORY[0x277D81600] + 8) || v44.n128_f64[0] == *MEMORY[0x277D815F8] && v45.n128_f64[0] == *(MEMORY[0x277D815F8] + 8))
      {
        v53 = MEMORY[0x277D815C0];
      }

      else if (v44.n128_f64[0] == *MEMORY[0x277D81610] && v45.n128_f64[0] == *(MEMORY[0x277D81610] + 8) || v44.n128_f64[0] == *MEMORY[0x277D81608] && v45.n128_f64[0] == *(MEMORY[0x277D81608] + 8))
      {
        v53 = MEMORY[0x277D815C8];
      }

      else
      {
        if (v44.n128_f64[0] != *MEMORY[0x277D815F0] || v45.n128_f64[0] != *(MEMORY[0x277D815F0] + 8))
        {
          if (v44.n128_f64[0] != *MEMORY[0x277D815E8] || (v44.n128_u64[0] = *(MEMORY[0x277D815E8] + 8), v45.n128_f64[0] != v44.n128_f64[0]))
          {
            v46.n128_u64[0] = *MEMORY[0x277D815E8];
            v55 = objc_msgSend_UUID(MEMORY[0x277CCAD78], v39, v44, v45, v46, v47, v40, v41, v42, v43);
            v117 = objc_msgSend_UUIDString(v55, v108, v113, v114, v115, v116, v109, v110, v111, v112);
            paperID = self->_paperID;
            self->_paperID = v117;

            goto LABEL_28;
          }
        }

        v53 = MEMORY[0x277D815B8];
      }
    }
  }

  v54 = *v53;
  v55 = self->_paperID;
  self->_paperID = v54;
LABEL_28:

  v65 = objc_msgSend_settings(self, v56, v61, v62, v63, v64, v57, v58, v59, v60);
  objc_msgSend_setHyphenationLanguage_(v65, v66, v70, v71, v72, v73, &stru_288501738, v67, v68, v69);

  v83 = objc_msgSend_flowInfoContainer(self, v74, v79, v80, v81, v82, v75, v76, v77, v78);
  objc_msgSend_setNextUserInterfaceIdentifier_(v83, v84, v88, v89, v90, v91, 0, v85, v86, v87);

  objc_msgSend_upgradeParagraphStylesForTOCNavigator(self, v92, v97, v98, v99, v100, v93, v94, v95, v96);
  objc_msgSend_resetForNewDocumentFromTemplate_locale_(self->_settings, v101, v104, v105, v106, v107, v24, localeCopy, v102, v103);
}

- (void)updateWritingDirection:(unint64_t)direction
{
  v13.receiver = self;
  v13.super_class = TPDocumentRoot;
  [(TSADocumentRoot *)&v13 updateWritingDirection:?];
  objc_msgSend_setDocumentIsRTL_(self->_settings, v5, v9, v10, v11, v12, direction == 2, v6, v7, v8);
}

- (id)thumbnailIdentifierForPageIndex:(unint64_t)index
{
  if (index >= 0x7FFFFFFFFFFFFFFFLL && (objc_msgSend_isAlternativePageIndex_documentRoot_(TPPageInfo, a2, v6, v7, v8, v9, index, self, v4, v5) & 1) == 0)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v6, v7, v8, v9, "[TPDocumentRoot thumbnailIdentifierForPageIndex:]", v3, v4, v5);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm", v14, v15, v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v22, v23, v24, v25, v26, v12, v21, 2101, 0, "");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v32, v33, v34, v35, v28, v29, v30, v31);
  }

  v36 = MEMORY[0x277CCABB0];

  return objc_msgSend_numberWithUnsignedInteger_(v36, a2, v6, v7, v8, v9, index, v3, v4, v5);
}

- (unint64_t)pageIndexForThumbnailIdentifier:(id)identifier
{
  identifierCopy = identifier;
  objc_opt_class();
  v9 = TSUDynamicCast();
  if (!v9)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v10, v11, v12, v13, "[TPDocumentRoot pageIndexForThumbnailIdentifier:]", v6, v7, v8);
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v20, v21, v22, v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm", v17, v18, v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v25, v26, v27, v28, v29, v15, v24, 2107, 0, "invalid nil value for '%{public}s'", "number");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v35, v36, v37, v38, v31, v32, v33, v34);
  }

  v39 = objc_msgSend_unsignedIntegerValue(v9, v4, v10, v11, v12, v13, v5, v6, v7, v8);

  return v39;
}

+ (CGSize)pageSizeFromPaperSize:(CGSize)size pageScale:(double)scale orientation:(int64_t)orientation
{
  TSUMultiplySizeScalar();
  v8 = (v6 < v7) ^ (orientation == 1);
  if (v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = v7;
  }

  if (!v8)
  {
    v7 = v6;
  }

  v10 = v9;
  result.height = v7;
  result.width = v10;
  return result;
}

- (CGSize)paperSize
{
  objc_msgSend_pageSize(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  objc_msgSend_pageScale(self, v11, v16, v17, v18, v19, v12, v13, v14, v15);

  TSUMultiplySizeScalar();
  result.height = v21;
  result.width = v20;
  return result;
}

- (CGSize)unrotatedPaperSize
{
  objc_msgSend_paperSize(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v12 = v11.n128_f64[0];
  v14 = v13.n128_f64[0];
  v22 = objc_msgSend_orientation(self, v15, v11, v13, v20, v21, v16, v17, v18, v19);
  if (v22 == 1)
  {
    v23 = v14;
  }

  else
  {
    v23 = v12;
  }

  if (v22 == 1)
  {
    v24 = v12;
  }

  else
  {
    v24 = v14;
  }

  result.height = v24;
  result.width = v23;
  return result;
}

- (BOOL)exportToPath:(id)path exporter:(id)exporter delegate:(id)delegate error:(id *)error
{
  v11.receiver = self;
  v11.super_class = TPDocumentRoot;
  exporterCopy = exporter;
  LOBYTE(error) = [(TSADocumentRoot *)&v11 exportToPath:path exporter:exporterCopy delegate:delegate error:error];

  return error;
}

+ (CGSize)previewImageSizeForType:(unint64_t)type
{
  v3 = 225.0;
  v4 = 174.0;
  if (type > 2)
  {
    switch(type)
    {
      case 3uLL:
        v3 = 116.0;
        v4 = 90.0;
        goto LABEL_15;
      case 4uLL:
        goto LABEL_15;
      case 5uLL:
        v3 = 54.0;
        v5 = 0x4045000000000000;
        goto LABEL_10;
    }

LABEL_12:
    v3 = 512.0;
    v4 = 396.0;
    goto LABEL_15;
  }

  if (!type)
  {
    goto LABEL_15;
  }

  if (type == 1)
  {
    v3 = 90.0;
    v4 = 70.0;
    goto LABEL_15;
  }

  if (type != 2)
  {
    goto LABEL_12;
  }

  v3 = 114.0;
  v5 = 0x4056000000000000;
LABEL_10:
  v4 = *&v5;
LABEL_15:
  result.height = v3;
  result.width = v4;
  return result;
}

- (id)previewImageForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v24 = 0;
  v25 = &v24;
  *&size.width = 0x3032000000;
  v26 = 0x3032000000;
  v27 = sub_2760086E8;
  v28 = sub_2760086F8;
  v29 = 0;
  v12 = objc_msgSend_accessController(self, a2, size, *&size.height, v7, v8, v3, v4, v5, v6);
  v23[0] = MEMORY[0x277D85DD0];
  v13.n128_u64[0] = 3221225472;
  v23[1] = 3221225472;
  v23[2] = sub_27600DC7C;
  v23[3] = &unk_27A6A8F48;
  v23[4] = self;
  v23[5] = &v24;
  *&v23[6] = width;
  *&v23[7] = height;
  objc_msgSend_performRead_(v12, v14, v13, v18, v19, v20, v23, v15, v16, v17);

  v21 = v25[5];
  _Block_object_dispose(&v24, 8);

  return v21;
}

- (id)p_previewImageWithImageSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v214[1] = *MEMORY[0x277D85DE8];
  if (self->_isTornDown && (v11 = MEMORY[0x277D81150], objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, size, *&size.height, v6, v7, "[TPDocumentRoot p_previewImageWithImageSize:]", v3, v4, v5), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm", v14, v15, v16), v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v22, v23, v24, v25, v26, v12, v21, 2283, 0, "Trying to generate a preview image after document root has been torn down"), v21, v12, objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v32, v33, v34, v35, v28, v29, v30, v31), self->_isTornDown))
  {
    v36 = 0;
  }

  else
  {
    v37 = objc_msgSend_paginatedPageControllerForDelegate_(TPPaginatedPageController, a2, size, *&size.height, v6, v7, self, v3, v4, v5);
    objc_msgSend_paginateThroughPageIndex_(v37, v38, v42, v43, v44, v45, 2, v39, v40, v41);
    v46 = [TPThumbnailImager alloc];
    v55 = objc_msgSend_initWithDocumentRoot_(v46, v47, v51, v52, v53, v54, self, v48, v49, v50);
    v65 = objc_msgSend_whiteColor(MEMORY[0x277D81180], v56, v61, v62, v63, v64, v57, v58, v59, v60);
    objc_msgSend_setBackgroundColor_(v55, v66, v70, v71, v72, v73, v65, v67, v68, v69);

    objc_msgSend_pageRectForPageIndex_allowAfterPaginationPoint_(v37, v74, v77, v78, v79, v80, 0, 0, v75, v76);
    v82 = v81;
    v84 = v83;
    if (v85 / v86 >= width / height)
    {
      TSURound();
      if (v88 >= height)
      {
        v88 = height;
      }

      if (v88 >= 1.0)
      {
        height = v88;
      }

      else
      {
        height = 1.0;
      }
    }

    else
    {
      TSURound();
      if (v87 >= width)
      {
        v87 = width;
      }

      if (v87 >= 1.0)
      {
        width = v87;
      }

      else
      {
        width = 1.0;
      }
    }

    TSUMultiplySizeScalar();
    v90 = v89;
    v92 = v91;
    v93.n128_f64[0] = width;
    v94.n128_f64[0] = height;
    objc_msgSend_setScaledImageSize_(v55, v95, v93, v94, v100, v101, v96, v97, v98, v99);
    v102.n128_f64[0] = floor(v92);
    v103.n128_f64[0] = floor(v90);
    v104.n128_u64[0] = v82;
    v105.n128_u64[0] = v84;
    objc_msgSend_setUnscaledClipRect_(v55, v106, v104, v105, v103, v102, v107, v108, v109, v110);
    objc_msgSend_setDistortedToMatch_(v55, v111, v115, v116, v117, v118, 1, v112, v113, v114);
    objc_msgSend_setImageMustHaveEvenDimensions_(v55, v119, v123, v124, v125, v126, 1, v120, v121, v122);
    if (objc_msgSend_pageCount(v37, v127, v132, v133, v134, v135, v128, v129, v130, v131))
    {
      if (objc_msgSend_pageCount(v37, v136, v141, v142, v143, v144, v137, v138, v139, v140) == 1)
      {
        v153 = objc_msgSend_pageInfoForPageIndex_(v37, v145, v149, v150, v151, v152, 0, v146, v147, v148);
        v214[0] = v153;
        v161 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v154, v157, v158, v159, v160, v214, 1, v155, v156);
        objc_msgSend_setInfos_(v55, v162, v166, v167, v168, v169, v161, v163, v164, v165);
      }

      else
      {
        v153 = objc_msgSend_pageInfoForPageIndex_(v37, v145, v149, v150, v151, v152, 0, v146, v147, v148);
        v161 = objc_msgSend_pageInfoForPageIndex_(v37, v170, v174, v175, v176, v177, 1, v171, v172, v173, v153);
        v213[1] = v161;
        v185 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v178, v181, v182, v183, v184, v213, 2, v179, v180);
        objc_msgSend_setInfos_(v55, v186, v190, v191, v192, v193, v185, v187, v188, v189);
      }

      v203 = objc_msgSend_newImage(v55, v194, v199, v200, v201, v202, v195, v196, v197, v198);
      v36 = objc_msgSend_imageWithCGImage_(MEMORY[0x277D811F8], v204, v208, v209, v210, v211, v203, v205, v206, v207);
      CGImageRelease(v203);
    }

    else
    {
      v36 = 0;
    }
  }

  return v36;
}

- (id)changeSessionManagerForModel:(id)model
{
  modelCopy = model;
  objc_opt_class();
  v10 = TSUDynamicCast();
  if (!v10)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v11, v12, v13, v14, "[TPDocumentRoot changeSessionManagerForModel:]", v7, v8, v9);
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm", v18, v19, v20);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v26, v27, v28, v29, v30, v16, v25, 2367, 0, "invalid nil value for '%{public}s'", "storage");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v36, v37, v38, v39, v32, v33, v34, v35);
  }

  if (objc_msgSend_supportsChangeTracking(v10, v5, v11, v12, v13, v14, v6, v7, v8, v9))
  {
    if (objc_msgSend_wpKind(v10, v40, v45, v46, v47, v48, v41, v42, v43, v44))
    {
      hasBody = 1;
    }

    else
    {
      v50 = objc_msgSend_settings(self, v40, v45, v46, v47, v48, v41, v42, v43, v44);
      hasBody = objc_msgSend_hasBody(v50, v51, v56, v57, v58, v59, v52, v53, v54, v55);
    }
  }

  else
  {
    hasBody = 0;
  }

  v60 = objc_msgSend_documentRoot(v10, v40, v45, v46, v47, v48, v41, v42, v43, v44);
  v61 = (v60 == self) & hasBody;

  if (v61 == 1)
  {
    v71 = objc_msgSend_parentInfo(v10, v62, v67, v68, v69, v70, v63, v64, v65, v66);
    v72 = TSUProtocolCast();

    if (v72 && (objc_msgSend_preventsChangeTracking(v72, v73, v78, v79, v80, v81, v74, v75, v76, v77, &unk_288525798) & 1) != 0)
    {
      selfCopy = 0;
    }

    else
    {
      selfCopy = self;
      objc_opt_class();
      v87 = TSUDynamicCast();
      if (v87)
      {
        if ((objc_msgSend_isSectionInfo_(selfCopy, v83, v88, v89, v90, v91, v87, v84, v85, v86) & 1) != 0 || (objc_opt_class(), TSDNearestParentInfoOfClassFromInfo(), v92 = objc_claimAutoreleasedReturnValue(), v92, v92))
        {

          selfCopy = 0;
        }
      }
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)modelEnumeratorWithFlags:(unint64_t)flags forObjectsPassingTest:(id)test
{
  testCopy = test;
  if (flags)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v12, v13, v14, v15, "[TPDocumentRoot modelEnumeratorWithFlags:forObjectsPassingTest:]", v8, v9, v10);
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm", v19, v20, v21);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v27, v28, v29, v30, v31, v17, v26, 2391, 0, "User search should start with the TSKFindReplaceDelegate");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v37, v38, v39, v40, v33, v34, v35, v36);
  }

  v41 = objc_msgSend_settings(self, v6, v12, v13, v14, v15, v7, v8, v9, v10);
  v51 = (flags >> 1) & 1 | objc_msgSend_hasBody(v41, v42, v47, v48, v49, v50, v43, v44, v45, v46);

  if (v51)
  {
    v121.receiver = self;
    v121.super_class = TPDocumentRoot;
    v56 = [(TPDocumentRoot *)&v121 modelEnumeratorWithFlags:flags forObjectsPassingTest:testCopy];
    if (!v56)
    {
      v61 = MEMORY[0x277D81150];
      v62 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, v57, v58, v59, v60, "[TPDocumentRoot modelEnumeratorWithFlags:forObjectsPassingTest:]", v53, v54, v55);
      v71 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v63, v67, v68, v69, v70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm", v64, v65, v66);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v61, v72, v73, v74, v75, v76, v62, v71, 2410, 0, "invalid nil value for '%{public}s'", "modelEnumerator");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v77, v82, v83, v84, v85, v78, v79, v80, v81);
      v56 = 0;
    }
  }

  else
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_27600E66C;
    aBlock[3] = &unk_27A6A8F70;
    aBlock[4] = self;
    aBlock[5] = testCopy;
    v86 = _Block_copy(aBlock);
    v122.receiver = self;
    v122.super_class = TPDocumentRoot;
    v56 = [(TPDocumentRoot *)&v122 modelEnumeratorWithFlags:flags forObjectsPassingTest:v86];
    if (!v56)
    {
      v95 = MEMORY[0x277D81150];
      v96 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v87, v91, v92, v93, v94, "[TPDocumentRoot modelEnumeratorWithFlags:forObjectsPassingTest:]", v88, v89, v90);
      v105 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v97, v101, v102, v103, v104, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm", v98, v99, v100);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v95, v106, v107, v108, v109, v110, v96, v105, 2407, 0, "invalid nil value for '%{public}s'", "modelEnumerator");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v111, v116, v117, v118, v119, v112, v113, v114, v115);
    }
  }

  return v56;
}

- (id)childEnumerator
{
  v11 = MEMORY[0x277D81148];
  v12 = objc_msgSend_bodyStorage(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v21 = objc_msgSend_aggregateEnumeratorWithObjects_(v11, v13, v17, v18, v19, v20, v12, v14, v15, v16, 0);

  v31 = objc_msgSend_theme(self, v22, v27, v28, v29, v30, v23, v24, v25, v26);
  objc_msgSend_addObject_(v21, v32, v36, v37, v38, v39, v31, v33, v34, v35);

  v49 = objc_msgSend_floatingDrawables(self, v40, v45, v46, v47, v48, v41, v42, v43, v44);
  v59 = objc_msgSend_drawableEnumerator(v49, v50, v55, v56, v57, v58, v51, v52, v53, v54);

  if (v59)
  {
    objc_msgSend_addObject_(v21, v60, v64, v65, v66, v67, v59, v61, v62, v63);
  }

  v77 = objc_msgSend_flowInfoContainer(self, v68, v73, v74, v75, v76, v69, v70, v71, v72);
  v87 = objc_msgSend_flowInfos(v77, v78, v83, v84, v85, v86, v79, v80, v81, v82);
  v97 = objc_msgSend_objectEnumerator(v87, v88, v93, v94, v95, v96, v89, v90, v91, v92);

  if (v97)
  {
    objc_msgSend_addObject_(v21, v98, v102, v103, v104, v105, v97, v99, v100, v101);
  }

  v115 = objc_msgSend_pageTemplates(self, v106, v111, v112, v113, v114, v107, v108, v109, v110);
  v125 = objc_msgSend_objectEnumerator(v115, v116, v121, v122, v123, v124, v117, v118, v119, v120);

  if (v125)
  {
    objc_msgSend_addObject_(v21, v126, v130, v131, v132, v133, v125, v127, v128, v129);
  }

  return v21;
}

- (id)modelPathComponentForChild:(id)child
{
  childCopy = child;
  v14 = objc_msgSend_bodyStorage(self, v5, v10, v11, v12, v13, v6, v7, v8, v9);

  if (v14 == childCopy)
  {
    v33 = @"body-storage";
  }

  else
  {
    v24 = objc_msgSend_theme(self, v15, v20, v21, v22, v23, v16, v17, v18, v19);

    if (v24 == childCopy)
    {
      v33 = @"theme";
    }

    else
    {
      v33 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v25, v29, v30, v31, v32, @"drawable-%p", v26, v27, v28, childCopy);
    }
  }

  return v33;
}

- (void)invalidateViewState
{
  v2.receiver = self;
  v2.super_class = TPDocumentRoot;
  [(TSADocumentRoot *)&v2 invalidateViewState];
}

- (BOOL)hasViewState
{
  objc_opt_class();
  v12 = objc_msgSend_viewState(self, v3, v8, v9, v10, v11, v4, v5, v6, v7);
  v22 = objc_msgSend_viewStateRoot(v12, v13, v18, v19, v20, v21, v14, v15, v16, v17);
  v23 = TSUDynamicCast();

  if (v23)
  {
    v33 = objc_msgSend_uiState(v23, v24, v29, v30, v31, v32, v25, v26, v27, v28);
    objc_msgSend_visibleRect(v33, v34, v39, v40, v41, v42, v35, v36, v37, v38);
    IsEmpty = CGRectIsEmpty(v55);
    v53 = objc_msgSend_viewScaleModeiOS(v33, v44, v49, v50, v51, v52, v45, v46, v47, v48) != 0 || !IsEmpty;
  }

  else
  {
    v53 = 0;
  }

  return v53;
}

- (void)viewDidAppear
{
  objc_msgSend_readViewState(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  self->_newDocument = 0;
  self->_viewDidAppear = 1;
}

- (void)willClose
{
  v12.receiver = self;
  v12.super_class = TPDocumentRoot;
  [(TSADocumentRoot *)&v12 willClose];
  objc_msgSend_tearDown(self, v3, v8, v9, v10, v11, v4, v5, v6, v7);
}

- (CGRect)pageBoundsWithinMargins
{
  leftMargin = self->_leftMargin;
  topMargin = self->_topMargin;
  v4 = self->_pageSize.width - (leftMargin + self->_rightMargin);
  v5 = self->_pageSize.height - (topMargin + self->_bottomMargin);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = topMargin;
  result.origin.x = leftMargin;
  return result;
}

- (BOOL)hasPageBackgroundsForSections
{
  v11 = objc_msgSend_bodyStorage(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v21 = objc_msgSend_sectionCount(v11, v12, v17, v18, v19, v20, v13, v14, v15, v16);

  if (v21)
  {
    v31 = 0;
    v32 = 1;
    do
    {
      v33 = objc_msgSend_bodyStorage(self, v22, v27, v28, v29, v30, v23, v24, v25, v26);
      v41 = objc_msgSend_sectionAtSectionIndex_effectiveRange_(v33, v34, v37, v38, v39, v40, v31, 0, v35, v36);

      if (!v41)
      {
        v51 = MEMORY[0x277D81150];
        v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, v47, v48, v49, v50, "[TPDocumentRoot hasPageBackgroundsForSections]", v44, v45, v46);
        v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v53, v57, v58, v59, v60, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm", v54, v55, v56);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v51, v62, v63, v64, v65, v66, v52, v61, 2666, 0, "invalid nil value for '%{public}s'", "section");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v67, v72, v73, v74, v75, v68, v69, v70, v71);
      }

      v76 = objc_msgSend_backgroundFill(v41, v42, v47, v48, v49, v50, v43, v44, v45, v46);

      if (v76)
      {
        break;
      }

      v32 = ++v31 < v21;
    }

    while (v21 != v31);
  }

  else
  {
    return 0;
  }

  return v32;
}

- (double)valueForMargin:(int64_t)margin
{
  result = 0.0;
  if (margin <= 5)
  {
    return *(&self->super.super.super.super.super.super.isa + *off_27A6A90D0[margin]);
  }

  return result;
}

- (void)setValue:(double)value forMargin:(int64_t)margin
{
  if (margin > 2)
  {
    switch(margin)
    {
      case 3:
        (MEMORY[0x2821F9670])(self, sel_setBottomMargin_, *&value);
        break;
      case 4:
        (MEMORY[0x2821F9670])(self, sel_setHeaderMargin_, *&value);
        break;
      case 5:
        (MEMORY[0x2821F9670])(self, sel_setFooterMargin_, *&value);
        break;
    }
  }

  else if (margin)
  {
    if (margin == 1)
    {
      (MEMORY[0x2821F9670])(self, sel_setRightMargin_, *&value);
    }

    else if (margin == 2)
    {
      (MEMORY[0x2821F9670])(self, sel_setTopMargin_, *&value);
    }
  }

  else
  {
    (MEMORY[0x2821F9670])(self, sel_setLeftMargin_, *&value);
  }
}

- (unint64_t)pageTemplateIndexForModelObject:(id)object
{
  v49 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  if (objectCopy)
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v13 = objc_msgSend_pageTemplates(self, v4, 0, v10, v11, v12, v5, v6, v7, v8, 0);
    v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, v16, v17, v18, v19, &v44, v48, 16, v15);
    if (v24)
    {
      v29 = *v45;
      while (2)
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v45 != v29)
          {
            objc_enumerationMutation(v13);
          }

          v31 = *(*(&v44 + 1) + 8 * i);
          if (objc_msgSend_containsModelObject_(v31, v20, v25, v26, v27, v28, objectCopy, v21, v22, v23))
          {
            v34 = objc_msgSend_pageTemplates(self, v20, v25, v26, v27, v28, v32, v21, v22, v23);
            v33 = objc_msgSend_indexOfObject_(v34, v35, v39, v40, v41, v42, v31, v36, v37, v38);

            goto LABEL_12;
          }
        }

        v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v20, v25, v26, v27, v28, &v44, v48, 16, v23);
        if (v24)
        {
          continue;
        }

        break;
      }
    }

    v33 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_12:
  }

  else
  {
    v33 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v33;
}

- (BOOL)isSectionModel:(id)model
{
  modelCopy = model;
  if (modelCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    v6 = TSUDynamicCast();
    v16 = v6;
    if (!v6 || (v17 = objc_msgSend_wpKind(v6, v7, v12, v13, v14, v15, v8, v9, v10, v11), v5 = v17, v17 >= 3))
    {
      v18 = objc_msgSend_sectionTemplatePageOwningModel_(self, v7, v12, v13, v14, v15, modelCopy, v9, v10, v11);
      v5 = v18 != 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isSectionInfo:(id)info
{
  infoCopy = info;
  if (infoCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    v6 = TSUDynamicCast();
    v16 = v6;
    if (!v6 || (v17 = objc_msgSend_wpKind(v6, v7, v12, v13, v14, v15, v8, v9, v10, v11), v5 = v17, v17 >= 3))
    {
      v18 = objc_msgSend_sectionTemplatePageOwningInfo_(self, v7, v12, v13, v14, v15, infoCopy, v9, v10, v11);
      v5 = v18 != 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)sectionTemplatePageOwningModel:(id)model
{
  v38 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  if (modelCopy)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v13 = objc_msgSend_nonHiddenSections(self, v4, 0, v10, v11, v12, v5, v6, v7, v8, 0);
    v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, v16, v17, v18, v19, &v33, v37, 16, v15);
    if (v24)
    {
      v29 = *v34;
LABEL_4:
      v30 = 0;
      while (1)
      {
        if (*v34 != v29)
        {
          objc_enumerationMutation(v13);
        }

        v31 = objc_msgSend_sectionTemplatePageOwningModel_(*(*(&v33 + 1) + 8 * v30), v20, v25, v26, v27, v28, modelCopy, v21, v22, v23);
        if (v31)
        {
          break;
        }

        if (v24 == ++v30)
        {
          v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v20, v25, v26, v27, v28, &v33, v37, 16, v23);
          if (v24)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v31 = 0;
    }
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

- (id)sectionTemplatePageOwningInfo:(id)info
{
  v38 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  if (infoCopy)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v13 = objc_msgSend_nonHiddenSections(self, v4, 0, v10, v11, v12, v5, v6, v7, v8, 0);
    v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, v16, v17, v18, v19, &v33, v37, 16, v15);
    if (v24)
    {
      v29 = *v34;
LABEL_4:
      v30 = 0;
      while (1)
      {
        if (*v34 != v29)
        {
          objc_enumerationMutation(v13);
        }

        v31 = objc_msgSend_sectionTemplatePageOwningInfo_(*(*(&v33 + 1) + 8 * v30), v20, v25, v26, v27, v28, infoCopy, v21, v22, v23);
        if (v31)
        {
          break;
        }

        if (v24 == ++v30)
        {
          v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v20, v25, v26, v27, v28, &v33, v37, 16, v23);
          if (v24)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v31 = 0;
    }
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

- (BOOL)isSectionTemplateInfo:(id)info
{
  infoCopy = info;
  v16.receiver = self;
  v16.super_class = TPDocumentRoot;
  if ([(TSWPDocumentRoot *)&v16 isSectionTemplateInfo:infoCopy])
  {
    v13 = 1;
  }

  else
  {
    v14 = objc_msgSend_sectionTemplatePageOwningInfo_(self, v5, v9, v10, v11, v12, infoCopy, v6, v7, v8);
    v13 = v14 != 0;
  }

  return v13;
}

- (BOOL)isDrawableOnSectionTemplatePage:(id)page
{
  v10 = objc_msgSend_sectionTemplatePageOwningInfo_(self, a2, v6, v7, v8, v9, page, v3, v4, v5);
  v11 = v10 != 0;

  return v11;
}

- (BOOL)cellCommentsAllowedOnInfo:(id)info
{
  infoCopy = info;
  objc_opt_class();
  v5 = TSUDynamicCast();
  if ((objc_msgSend_p_drawableInfoIsOwnedByATPPageTemplate_(self, v6, v10, v11, v12, v13, v5, v7, v8, v9) & 1) != 0 || (v25.receiver = self, v25.super_class = TPDocumentRoot, ![(TSWPDocumentRoot *)&v25 cellCommentsAllowedOnInfo:infoCopy]))
  {
    v23 = 0;
  }

  else
  {
    v22 = objc_msgSend_sectionTemplatePageOwningInfo_(self, v14, v18, v19, v20, v21, infoCopy, v15, v16, v17);
    v23 = v22 == 0;
  }

  return v23;
}

- (BOOL)p_drawableInfoIsOwnedByATPPageTemplate:(id)template
{
  templateCopy = template;
  objc_opt_class();
  v4 = TSDNearestParentInfoOfClassFromInfo();
  v5 = v4 != 0;

  return v5;
}

- (BOOL)sectionTemplatePagesAllowDrawable:(id)drawable
{
  drawableCopy = drawable;
  objc_opt_class();
  v4 = TSUDynamicCast();
  v14 = v4;
  if (v4)
  {
    isLinked = objc_msgSend_isLinked(v4, v5, v10, v11, v12, v13, v6, v7, v8, v9);
  }

  else
  {
    isLinked = 0;
  }

  objc_opt_class();
  v16 = TSUDynamicCast();
  if (objc_msgSend_isAnchoredToText(drawableCopy, v17, v22, v23, v24, v25, v18, v19, v20, v21))
  {
    v35 = objc_msgSend_exteriorTextWrap(drawableCopy, v26, v31, v32, v33, v34, v27, v28, v29, v30);
    isHTMLWrap = objc_msgSend_isHTMLWrap(v35, v36, v41, v42, v43, v44, v37, v38, v39, v40);
  }

  else
  {
    isHTMLWrap = 0;
  }

  objc_opt_class();
  v46 = TSUDynamicCast();
  objc_opt_class();
  v47 = TSUDynamicCast();
  v92 = 0;
  v93 = &v92;
  v94 = 0x2020000000;
  v95 = 0;
  v48 = objc_alloc(MEMORY[0x277D80660]);
  v56 = objc_msgSend_initWithRootModelObject_filter_(v48, v49, v52, v53, v54, v55, drawableCopy, 0, v50, v51);
  v86 = MEMORY[0x277D85DD0];
  v87 = 3221225472;
  v88 = sub_27600F87C;
  v89 = &unk_27A6A8F98;
  v57 = drawableCopy;
  v90 = v57;
  v91 = &v92;
  objc_msgSend_enumerateUsingBlock_(v56, v58, v62, v63, v64, v65, &v86, v59, v60, v61);
  v75 = 0;
  if (((isLinked | isHTMLWrap) & 1) == 0 && !v16 && !v46 && !v47)
  {
    if (objc_msgSend_isLocked(v57, v66, v71, v72, v73, v74, v67, v68, v69, v70, v86, v87, v88, v89) & 1) != 0 || (objc_msgSend_isInlineWithText(v57, v76, v81, v82, v83, v84, v77, v78, v79, v80))
    {
      v75 = 0;
    }

    else
    {
      v75 = *(v93 + 24) ^ 1;
    }
  }

  _Block_object_dispose(&v92, 8);
  return v75 & 1;
}

- (unint64_t)inheritedSectionIndexForSectionIndex:(unint64_t)index
{
  indexCopy = index;
  for (i = objc_msgSend_bodyStorage(self, a2, v6, v7, v8, v9, index, v3, v4, v5);
  {
    objc_opt_class();
    v19 = objc_msgSend_sectionAtSectionIndex_effectiveRange_(i, v12, v15, v16, v17, v18, indexCopy, 0, v13, v14);
    v20 = TSUCheckedDynamicCast();
    v30 = objc_msgSend_inheritPreviousHeaderFooter(v20, v21, v26, v27, v28, v29, v22, v23, v24, v25);

    if (!v30)
    {
      break;
    }
  }

  return indexCopy;
}

- (id)freehandDrawingToolkitUIState
{
  v10 = objc_msgSend_uiState(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v20 = objc_msgSend_freehandDrawingToolkitUIState(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);

  return v20;
}

- (id)pencilAnnotationUIState
{
  v10 = objc_msgSend_uiState(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v20 = objc_msgSend_pencilAnnotationUIState(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);

  return v20;
}

- (BOOL)documentDisallowsHighlightsOnStorage:(id)storage
{
  storageCopy = storage;
  if (objc_msgSend_pageTemplateIndexForModelObject_(self, v5, v9, v10, v11, v12, storageCopy, v6, v7, v8) == 0x7FFFFFFFFFFFFFFFLL)
  {
    isSectionModel = objc_msgSend_isSectionModel_(self, v13, v17, v18, v19, v20, storageCopy, v14, v15, v16);
  }

  else
  {
    isSectionModel = 1;
  }

  return isSectionModel;
}

- (BOOL)shouldHyphenate
{
  v10 = objc_msgSend_settings(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v20 = objc_msgSend_autoHyphenation(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);

  return v20;
}

- (__CFLocale)hyphenationLocale
{
  result = self->_hyphenationLocale;
  if (!result)
  {
    v12 = objc_msgSend_settings(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
    v22 = objc_msgSend_hyphenationLanguage(v12, v13, v18, v19, v20, v21, v14, v15, v16, v17);

    if (objc_msgSend_length(v22, v23, v28, v29, v30, v31, v24, v25, v26, v27))
    {
      self->_hyphenationLocale = CFLocaleCreate(*MEMORY[0x277CBECE8], v22);
    }

    else
    {
      v41 = objc_msgSend_documentLocale(self, v32, v37, v38, v39, v40, v33, v34, v35, v36);
      self->_hyphenationLocale = objc_msgSend_cfLocale(v41, v42, v47, v48, v49, v50, v43, v44, v45, v46);

      hyphenationLocale = self->_hyphenationLocale;
      if (hyphenationLocale)
      {
        CFRetain(hyphenationLocale);
      }
    }

    return self->_hyphenationLocale;
  }

  return result;
}

- (BOOL)useLigatures
{
  v10 = objc_msgSend_settings(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v20 = objc_msgSend_useLigatures(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);

  return v20;
}

- (int)naturalAlignmentAtCharIndex:(unint64_t)index inTextStorage:(id)storage
{
  storageCopy = storage;
  if (objc_msgSend_wpKind(storageCopy, v7, v12, v13, v14, v15, v8, v9, v10, v11) == 1 && (objc_msgSend_sectionTemplatePageOwningInfo_(self, v16, v20, v21, v22, v23, storageCopy, v17, v18, v19), v24 = objc_claimAutoreleasedReturnValue(), (v34 = v24) != 0))
  {
    if ((objc_msgSend_usesSingleHeaderFooter(v24, v25, v30, v31, v32, v33, v26, v27, v28, v29) & 1) == 0)
    {
      v78 = objc_msgSend_headerFragmentIndexForStorage_(v34, v35, v39, v40, v41, v42, storageCopy, v36, v37, v38);
      v87 = v78;
      if (v78)
      {
        if (v78 == 1)
        {
          v48 = 2;
        }

        else
        {
          if (v78 != 2)
          {
            v89 = MEMORY[0x277D81150];
            v90 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v79, v83, v84, v85, v86, "[TPDocumentRoot naturalAlignmentAtCharIndex:inTextStorage:]", v80, v81, v82);
            v99 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v91, v95, v96, v97, v98, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm", v92, v93, v94);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v89, v100, v101, v102, v103, v104, v90, v99, 3169, 0, "unexpected header fragment index %lld", v87);

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v105, v110, v111, v112, v113, v106, v107, v108, v109);
            v43 = v34;
            goto LABEL_7;
          }

          v48 = 1;
        }
      }

      else
      {
        v48 = 0;
      }

      v43 = v34;
      goto LABEL_15;
    }

    v43 = v34;
  }

  else
  {
    v43 = 0;
  }

  v114.receiver = self;
  v114.super_class = TPDocumentRoot;
  v48 = [(TSWPDocumentRoot *)&v114 naturalAlignmentAtCharIndex:index inTextStorage:storageCopy];
  if (v48 == 4)
  {
LABEL_7:
    v53 = MEMORY[0x277D81150];
    v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, v49, v50, v51, v52, "[TPDocumentRoot naturalAlignmentAtCharIndex:inTextStorage:]", v45, v46, v47);
    v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, v59, v60, v61, v62, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm", v56, v57, v58);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v53, v64, v65, v66, v67, v68, v54, v63, 3179, 0, "failed to determine natural alignment");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v69, v74, v75, v76, v77, v70, v71, v72, v73);
    v48 = 4;
  }

LABEL_15:

  return v48;
}

- (int)verticalAlignmentForTextStorage:(id)storage
{
  storageCopy = storage;
  if (objc_msgSend_wpKind(storageCopy, v5, v10, v11, v12, v13, v6, v7, v8, v9) != 1 || (objc_msgSend_sectionTemplatePageOwningInfo_(self, v14, v19, v20, v21, v22, storageCopy, v16, v17, v18), v23 = objc_claimAutoreleasedReturnValue(), (v24 = v23) == 0))
  {
    if (objc_msgSend_wpKind(storageCopy, v14, v19, v20, v21, v22, v15, v16, v17, v18) != 2)
    {
      v62.receiver = self;
      v62.super_class = TPDocumentRoot;
      v60 = [(TSWPDocumentRoot *)&v62 verticalAlignmentForTextStorage:storageCopy];
      v24 = 0;
      goto LABEL_11;
    }

    v24 = 0;
    goto LABEL_9;
  }

  v25 = objc_msgSend_headerFooterTypeForStorage_(v23, v14, v19, v20, v21, v22, storageCopy, v16, v17, v18);
  v34 = v25;
  if (v25)
  {
    if (v25 != 1)
    {
      v35 = MEMORY[0x277D81150];
      v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, v30, v31, v32, v33, "[TPDocumentRoot verticalAlignmentForTextStorage:]", v27, v28, v29);
      v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, v41, v42, v43, v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm", v38, v39, v40);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v46, v47, v48, v49, v50, v36, v45, 3199, 0, "unexpected header/footer type %lld", v34);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v51, v56, v57, v58, v59, v52, v53, v54, v55);
      goto LABEL_6;
    }

LABEL_9:
    v60 = 2;
    goto LABEL_11;
  }

LABEL_6:
  v60 = 0;
LABEL_11:

  return v60;
}

- (BOOL)isMultiPageForQuickLook
{
  v9 = objc_msgSend_paginatedPageControllerForDelegate_(TPPaginatedPageController, a2, v5, v6, v7, v8, self, v2, v3, v4);
  v19 = objc_msgSend_pageCount(v9, v10, v15, v16, v17, v18, v11, v12, v13, v14) > 1;

  return v19;
}

- (BOOL)textIsVerticalInStorage:(id)storage atCharIndex:(unint64_t)index
{
  storageCopy = storage;
  v16 = objc_msgSend_bodyStorage(self, v7, v12, v13, v14, v15, v8, v9, v10, v11);

  if (v16 == storageCopy)
  {
    v26 = objc_msgSend_laysOutBodyVertically(self, v17, v22, v23, v24, v25, v18, v19, v20, v21);
  }

  else
  {
    v29.receiver = self;
    v29.super_class = TPDocumentRoot;
    v26 = [(TSWPDocumentRoot *)&v29 textIsVerticalInStorage:storageCopy atCharIndex:index];
  }

  v27 = v26;

  return v27;
}

- (id)uuidPathPrefixComponentsForInfo:(id)info
{
  infoCopy = info;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || objc_msgSend_wpKind(infoCopy, v5, v10, v11, v12, v13, v6, v7, v8, v9))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && objc_msgSend_wpKind(infoCopy, v14, v19, v20, v21, v22, v15, v16, v17, v18) == 2)
    {
      v24 = MEMORY[0x277CBEA60];
      v25 = objc_msgSend_bodyStorage(self, v14, v19, v20, v21, v22, v23, v16, v17, v18);
      v35 = objc_msgSend_objectUUID(v25, v26, v31, v32, v33, v34, v27, v28, v29, v30);
      v44 = objc_msgSend_arrayWithObject_(v24, v36, v40, v41, v42, v43, v35, v37, v38, v39);
LABEL_23:

      goto LABEL_24;
    }

    v25 = objc_msgSend_sectionTemplatePageOwningInfo_(self, v14, v19, v20, v21, v22, infoCopy, v16, v17, v18);
    if (v25)
    {
      objc_opt_class();
      v53 = (objc_opt_isKindOfClass() & 1) != 0 && objc_msgSend_headerFooterTypeForStorage_(v25, v45, v49, v50, v51, v52, infoCopy, v46, v47, v48) != -1;
      v35 = TSDTopmostInfoFromInfo();
      v92 = objc_msgSend_parentInfo(v35, v83, v88, v89, v90, v91, v84, v85, v86, v87);

      if (v92)
      {
        v102 = objc_msgSend_parentInfo(v35, v93, v98, v99, v100, v101, v94, v95, v96, v97);

        v35 = v102;
      }

      v103 = v35 == infoCopy || v53;
      if (v103 == 1)
      {
        v104 = objc_msgSend_section(v25, v93, v98, v99, v100, v101, v94, v95, v96, v97);
        v114 = objc_msgSend_objectUUIDPath(v104, v105, v110, v111, v112, v113, v106, v107, v108, v109);
        v44 = objc_msgSend_uuids(v114, v115, v120, v121, v122, v123, v116, v117, v118, v119);

LABEL_21:
        goto LABEL_23;
      }
    }

    else
    {
      v35 = TSDTopmostInfoFromInfo();
      if (v35 == infoCopy && objc_msgSend_isFloatingAboveText(infoCopy, v54, v59, v60, v61, v62, v55, v56, v57, v58))
      {
        v72 = objc_msgSend_parentInfo(infoCopy, v63, v68, v69, v70, v71, v64, v65, v66, v67);
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v44 = 0;
LABEL_24:

          goto LABEL_25;
        }

        v125 = MEMORY[0x277CBEA60];
        v35 = objc_msgSend_bodyStorage(self, v74, v79, v80, v81, v82, v75, v76, v77, v78);
        v104 = objc_msgSend_objectUUID(v35, v126, v131, v132, v133, v134, v127, v128, v129, v130);
        v44 = objc_msgSend_arrayWithObject_(v125, v135, v139, v140, v141, v142, v104, v136, v137, v138);
        goto LABEL_21;
      }
    }

    v44 = 0;
    goto LABEL_23;
  }

  v44 = 0;
LABEL_25:

  return v44;
}

+ (void)localizeTextStorage:(id)storage withTemplateBundle:(id)bundle andLocale:(id)locale
{
  v418 = *MEMORY[0x277D85DE8];
  storageCopy = storage;
  bundleCopy = bundle;
  selfCopy = self;
  localeCopy = locale;
  v401 = storageCopy;
  objc_msgSend_localizeDropCapsInStorage_withLocale_(self, v9, v12, v13, v14, v15, storageCopy, localeCopy, v10, v11);
  v387 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v25 = objc_msgSend_range(storageCopy, v16, v21, v22, v23, v24, v17, v18, v19, v20);
  objc_msgSend_smartFieldsWithAttributeKind_intersectingRange_passingTest_(storageCopy, v26, v27, v28, v29, v30, 6, v25, v26, &unk_2885012B8);
  v412 = 0u;
  v413 = 0u;
  v410 = 0u;
  obj = v411 = 0u;
  v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v31, v33, v34, v35, v36, &v410, v417, 16, v32);
  if (v42)
  {
    v47 = *v411;
    do
    {
      for (i = 0; i != v42; ++i)
      {
        if (*v411 != v47)
        {
          objc_enumerationMutation(obj);
        }

        v49 = *(*(&v410 + 1) + 8 * i);
        if (objc_msgSend_updatePlan(v49, v37, v43, v44, v45, v46, v38, v39, v40, v41))
        {
          v59 = objc_msgSend_range(v49, v50, v55, v56, v57, v58, v51, v52, v53, v54);
          v67 = objc_msgSend_characterStyleAtCharIndex_effectiveRange_(v401, v60, v63, v64, v65, v66, v59, 0, v61, v62);
          v77 = objc_msgSend_locale(localeCopy, v68, v73, v74, v75, v76, v69, v70, v71, v72);
          objc_msgSend_resetLocaleTo_(v49, v78, v82, v83, v84, v85, v77, v79, v80, v81);

          if (v67)
          {
            v95 = objc_msgSend_range(v49, v86, v91, v92, v93, v94, v87, v88, v89, v90);
            objc_msgSend_setCharacterStyle_range_undoTransaction_(v401, v96, v97, v98, v99, v100, v67, v95, v96, 0);
          }
        }

        if (objc_msgSend_usesDesignOnlyFeatures(v49, v50, v55, v56, v57, v58, v51, v52, v53, v54))
        {
          v101 = objc_alloc(MEMORY[0x277D80ED8]);
          v111 = objc_msgSend_context(v401, v102, v107, v108, v109, v110, v103, v104, v105, v106);
          v120 = objc_msgSend_initWithContext_(v101, v112, v116, v117, v118, v119, v111, v113, v114, v115);

          v130 = objc_msgSend_range(v49, v121, v126, v127, v128, v129, v122, v123, v124, v125);
          objc_msgSend_addSmartField_toRange_dolcContext_undoTransaction_(v401, v131, v132, v133, v134, v135, v120, v130, v131, 0, 0);
        }
      }

      v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v37, v43, v44, v45, v46, &v410, v417, 16, v41);
    }

    while (v42);
  }

  v145 = objc_msgSend_range(v401, v136, v141, v142, v143, v144, v137, v138, v139, v140);
  v147 = v146;
  v408[0] = MEMORY[0x277D85DD0];
  v408[1] = 3221225472;
  v408[2] = sub_276010D24;
  v408[3] = &unk_27A6A8FC0;
  v148 = v387;
  v409 = v148;
  objc_msgSend_enumerateSmartFieldsWithAttributeKind_inRange_usingBlock_(v401, v149, v150, v151, v152, v153, 6, v145, v147, v408);
  v406 = 0u;
  v407 = 0u;
  v404 = 0u;
  v405 = 0u;
  v388 = objc_msgSend_reverseObjectEnumerator(v148, v154, 0, v159, v160, v161, v155, v156, v157, v158);
  v168 = objc_msgSend_countByEnumeratingWithState_objects_count_(v388, v162, v164, v165, v166, v167, &v404, v416, 16, v163);
  v386 = v148;
  if (v168)
  {
    v391 = *v405;
    v390 = *MEMORY[0x277D80008];
    do
    {
      v394 = v168;
      for (j = 0; j != v394; ++j)
      {
        if (*v405 != v391)
        {
          objc_enumerationMutation(v388);
        }

        v178 = *(*(&v404 + 1) + 8 * j);
        v397 = objc_msgSend_objectAtIndexedSubscript_(v178, v169, v173, v174, v175, v176, 0, v170, v171, v172);
        v187 = objc_msgSend_objectAtIndexedSubscript_(v178, v179, v183, v184, v185, v186, 1, v180, v181, v182);
        v197 = objc_msgSend_rangeValue(v187, v188, v193, v194, v195, v196, v189, v190, v191, v192);
        v199 = v198;

        v400 = objc_msgSend_substringWithRange_(v401, v200, v203, v204, v205, v206, v197, v199, v201, v202);
        v398 = objc_msgSend_tswp_lineBreakingCharacterSet(MEMORY[0x277CCA900], v207, v212, v213, v214, v215, v208, v209, v210, v211);
        v216 = TSWPColumnBreakingCharacterSet();
        v399 = objc_msgSend_tsu_stringByReplacingInstancesOfCharactersInSet_withString_(v400, v217, v220, v221, v222, v223, v216, @" ", v218, v219);

        v396 = objc_msgSend_localizedTemplateStringForKey_value_table_templateBundle_locale_(selfCopy, v224, v225, v226, v227, v228, v399, v399, v390, bundleCopy, localeCopy);
        if ((objc_msgSend_isEqualToString_(v396, v229, v233, v234, v235, v236, v400, v230, v231, v232) & 1) == 0)
        {
          objc_msgSend_removeSmartField_fromRange_undoTransaction_(v401, v237, v238, v239, v240, v241, v397, v197, v199, 0);
          v250 = objc_msgSend_componentsSeparatedByCharactersInSet_(v400, v242, v246, v247, v248, v249, v398, v243, v244, v245);
          v260 = objc_msgSend_count(v250, v251, v256, v257, v258, v259, v252, v253, v254, v255);
          v269 = objc_msgSend_componentsSeparatedByCharactersInSet_(v396, v261, v265, v266, v267, v268, v398, v262, v263, v264);
          if (v260 == objc_msgSend_count(v269, v270, v275, v276, v277, v278, v271, v272, v273, v274))
          {
            if (v260)
            {
              v288 = 0;
              v289 = v197;
              do
              {
                v290 = objc_msgSend_objectAtIndexedSubscript_(v250, v279, v284, v285, v286, v287, v288, v281, v282, v283);
                v300 = objc_msgSend_length(v290, v291, v296, v297, v298, v299, v292, v293, v294, v295);
                v309 = objc_msgSend_objectAtIndexedSubscript_(v269, v301, v305, v306, v307, v308, v288, v302, v303, v304);
                v315 = objc_msgSend_replaceCharactersInRange_withString_notifyObservers_undoTransaction_(v401, v310, v311, v312, v313, v314, v289, v300, v309, 0, 0);
                v317 = v316;

                v318 = v315 + v317;
                v289 = v315 + v317 + 1;
                ++v288;
              }

              while (v260 != v288);
              v199 = v318 - v197;
            }
          }

          else
          {
            v197 = objc_msgSend_replaceCharactersInRange_withString_notifyObservers_undoTransaction_(v401, v279, v284, v285, v286, v287, v197, v199, v396, 0, 0);
            v199 = v279;
          }

          if (!objc_msgSend_wpKind(v401, v279, v284, v285, v286, v287, v280, v281, v282, v283))
          {
            v328 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v319, v324, v325, v326, v327, v320, v321, v322, v323);
            v338 = objc_msgSend_documentRoot(v401, v329, v334, v335, v336, v337, v330, v331, v332, v333);
            v414 = @"resetMetricsCache";
            v415 = MEMORY[0x277CBEC38];
            v345 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v339, v341, v342, v343, v344, &v415, &v414, 1, v340);
            objc_msgSend_postNotificationName_object_userInfo_(v328, v346, v348, v349, v350, v351, @"TPHasBodyChanged", v338, v345, v347);
          }

          objc_msgSend_addSmartField_toRange_dolcContext_undoTransaction_(v401, v319, v324, v325, v326, v327, v397, v197, v199, 0, 0);
        }
      }

      v168 = objc_msgSend_countByEnumeratingWithState_objects_count_(v388, v169, v173, v174, v175, v176, &v404, v416, 16, v172);
    }

    while (v168);
  }

  v361 = objc_msgSend_range(v401, v352, v357, v358, v359, v360, v353, v354, v355, v356);
  v363 = v362;
  v402[0] = MEMORY[0x277D85DD0];
  v402[1] = 3221225472;
  v402[2] = sub_276010E64;
  v402[3] = &unk_27A6A8FE8;
  v364 = localeCopy;
  v403 = v364;
  objc_msgSend_enumerateAttachmentsInTextRange_usingBlock_(v401, v365, v367, v368, v369, v370, v361, v363, v402, v366);
  v380 = objc_msgSend_range(v401, v371, v376, v377, v378, v379, v372, v373, v374, v375);
  objc_msgSend_setLanguage_forCharRange_undoTransaction_(v401, v381, v382, v383, v384, v385, 0, v380, v381, 0);
}

+ (void)localizeModelObject:(id)object withTemplateBundle:(id)bundle andLocale:(id)locale
{
  v357 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  selfCopy = self;
  bundleCopy = bundle;
  v352.receiver = self;
  v352.super_class = &OBJC_METACLASS___TPDocumentRoot;
  v320 = objectCopy;
  localeCopy = locale;
  objc_msgSendSuper2(&v352, sel_localizeModelObject_withTemplateBundle_andLocale_, objectCopy, bundleCopy);
  objc_opt_class();
  v324 = TSUDynamicCast();
  if (v324)
  {
    v322 = objc_msgSend_name(v324, v9, v14, v15, v16, v17, v10, v11, v12, v13);
    v332 = *MEMORY[0x277D80008];
    v28 = objc_msgSend_localizedTemplateStringForKey_value_table_templateBundle_locale_(self, v18, v19, v20, v21, v22, v322, v322, *MEMORY[0x277D80008], bundleCopy, localeCopy);
    obj = v28;
    if (v28)
    {
      objc_msgSend_setName_(v324, v23, v29, v30, v31, v32, v28, v25, v26, v27);
    }

    v33 = objc_msgSend_placeholderDrawables(v324, v23, v29, v30, v31, v32, v24, v25, v26, v27);
    v43 = objc_msgSend_copy(v33, v34, v39, v40, v41, v42, v35, v36, v37, v38);

    v350 = 0u;
    v351 = 0u;
    v348 = 0u;
    v349 = 0u;
    v44 = v43;
    v55 = objc_msgSend_countByEnumeratingWithState_objects_count_(v44, v45, v47, v48, v49, v50, &v348, v356, 16, v46);
    if (v55)
    {
      v60 = *v349;
      do
      {
        for (i = 0; i != v55; ++i)
        {
          if (*v349 != v60)
          {
            objc_enumerationMutation(v44);
          }

          v62 = *(*(&v348 + 1) + 8 * i);
          if (objc_msgSend_isUserDefinedTag_(TPPageTemplate, v51, v56, v57, v58, v59, v62, v52, v53, v54))
          {
            v63 = objc_msgSend_objectForKeyedSubscript_(v44, v51, v56, v57, v58, v59, v62, v52, v53, v54);
            v73 = objc_msgSend_localizedTemplateStringForKey_value_table_templateBundle_locale_(selfCopy, v64, v65, v66, v67, v68, v62, v62, v332, bundleCopy, localeCopy);
            if (v73)
            {
              objc_msgSend_applyTag_toPlaceholder_(v324, v69, v74, v75, v76, v77, v73, v63, v71, v72);
            }

            else
            {
              v78 = MEMORY[0x277D81150];
              v79 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v69, v74, v75, v76, v77, "+[TPDocumentRoot localizeModelObject:withTemplateBundle:andLocale:]", v70, v71, v72);
              v88 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v80, v84, v85, v86, v87, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm", v81, v82, v83);
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v78, v89, v90, v91, v92, v93, v79, v88, 3445, 0, "Failed to find localized tag for %{public}@", v62);

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v94, v99, v100, v101, v102, v95, v96, v97, v98);
            }
          }
        }

        v55 = objc_msgSend_countByEnumeratingWithState_objects_count_(v44, v51, v56, v57, v58, v59, &v348, v356, 16, v54);
      }

      while (v55);
    }
  }

  objc_opt_class();
  v103 = TSUDynamicCast();
  if (v103)
  {
    v323 = v103;
    objc_msgSend_floatingDrawables(v103, v104, v109, v110, v111, v112, v105, v106, v107, v108);
    v346 = 0u;
    v347 = 0u;
    v344 = 0u;
    v333 = v345 = 0u;
    obja = objc_msgSend_allDrawables(v333, v113, 0, v118, v119, v120, v114, v115, v116, v117);
    v131 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v121, v123, v124, v125, v126, &v344, v355, 16, v122);
    if (v131)
    {
      v136 = *v345;
      v137 = *MEMORY[0x277D80008];
      do
      {
        for (j = 0; j != v131; ++j)
        {
          if (*v345 != v136)
          {
            objc_enumerationMutation(obja);
          }

          v139 = *(*(&v344 + 1) + 8 * j);
          v140 = objc_msgSend_tagForDrawable_(v333, v127, v132, v133, v134, v135, v139, v128, v129, v130);
          if (objc_msgSend_isUserDefinedTag_(TPPageTemplate, v141, v145, v146, v147, v148, v140, v142, v143, v144))
          {
            if (objc_msgSend_containsString_(v140, v149, v153, v154, v155, v156, @"_LOCALIZABLE_Tag", v150, v151, v152))
            {
              v165 = v140;
            }

            else
            {
              v165 = objc_msgSend_stringByAppendingString_(v140, v157, v161, v162, v163, v164, @"_LOCALIZABLE_Tag", v158, v159, v160);
            }

            v171 = v165;
            v176 = objc_msgSend_localizedTemplateStringForKey_value_table_templateBundle_locale_(selfCopy, v166, v167, v168, v169, v170, v165, v140, v137, bundleCopy, localeCopy);
            if (v176)
            {
              objc_msgSend_applyTag_toDrawable_(v333, v172, v177, v178, v179, v180, v176, v139, v174, v175);
            }

            else
            {
              v181 = MEMORY[0x277D81150];
              v182 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v172, v177, v178, v179, v180, "+[TPDocumentRoot localizeModelObject:withTemplateBundle:andLocale:]", v173, v174, v175);
              v191 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v183, v187, v188, v189, v190, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm", v184, v185, v186);
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v181, v192, v193, v194, v195, v196, v182, v191, 3464, 0, "Failed to find localized tag for %{public}@", v140);

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v197, v202, v203, v204, v205, v198, v199, v200, v201);
            }
          }
        }

        v131 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v127, v132, v133, v134, v135, &v344, v355, 16, v130);
      }

      while (v131);
    }

    v215 = objc_msgSend_templateIdentifier(v323, v206, v211, v212, v213, v214, v207, v208, v209, v210);
    objc_msgSend_rangeOfString_(v215, v216, v220, v221, v222, v223, @"_RTL", v217, v218, v219);
    v225 = v224;

    isLanguageCharacterDirectionRightToLeft = objc_msgSend_isLanguageCharacterDirectionRightToLeft(localeCopy, v226, v231, v232, v233, v234, v227, v228, v229, v230);
    if (v225)
    {
      v244 = 0;
    }

    else
    {
      v244 = isLanguageCharacterDirectionRightToLeft;
    }

    if (v244 == 1)
    {
      v342 = 0u;
      v343 = 0u;
      v340 = 0u;
      v341 = 0u;
      v321 = objc_msgSend_sections(v323, v236, 0, v241, v242, v243, v237, v238, v239, v240);
      v251 = objc_msgSend_countByEnumeratingWithState_objects_count_(v321, v245, v247, v248, v249, v250, &v340, v354, 16, v246);
      if (!v251)
      {
        goto LABEL_55;
      }

      objb = *v341;
      while (1)
      {
        v329 = v251;
        for (k = 0; k != v329; ++k)
        {
          if (*v341 != objb)
          {
            objc_enumerationMutation(v321);
          }

          v262 = *(*(&v340 + 1) + 8 * k);
          v263 = objc_msgSend_settings(v323, v252, v257, v258, v259, v260, v253, v254, v255, v256);
          if (objc_msgSend_hasFacingPages(v263, v264, v269, v270, v271, v272, v265, v266, v267, v268))
          {
            v282 = objc_msgSend_sectionTemplateEvenOddPagesDifferent(v262, v273, v278, v279, v280, v281, v274, v275, v276, v277);

            if (v282)
            {
              v292 = objc_msgSend_sectionTemplatePageForType_(v262, v283, v288, v289, v290, v291, 2, v285, v286, v287);
              v301 = objc_msgSend_sectionTemplatePageForType_(v262, v293, v297, v298, v299, v300, 1, v294, v295, v296);
              aBlock[0] = MEMORY[0x277D85DD0];
              aBlock[1] = 3221225472;
              aBlock[2] = sub_2760117C8;
              aBlock[3] = &unk_27A6A9010;
              aBlock[4] = v292;
              aBlock[5] = v301;
              v302 = _Block_copy(aBlock);
              v302[2](v302, 0);
              v302[2](v302, 1);

              goto LABEL_53;
            }
          }

          else
          {
          }

          v337 = 0u;
          v338 = 0u;
          v335 = 0u;
          v336 = 0u;
          v292 = objc_msgSend_sectionTemplatePages(v262, v283, 0, v289, v290, v291, v284, v285, v286, v287);
          v309 = objc_msgSend_countByEnumeratingWithState_objects_count_(v292, v303, v305, v306, v307, v308, &v335, v353, 16, v304);
          if (v309)
          {
            v310 = *v336;
            do
            {
              for (m = 0; m != v309; ++m)
              {
                if (*v336 != v310)
                {
                  objc_enumerationMutation(v292);
                }

                v312 = *(*(&v335 + 1) + 8 * m);
                v334[0] = MEMORY[0x277D85DD0];
                v334[1] = 3221225472;
                v334[2] = sub_2760118A8;
                v334[3] = &unk_27A6A9038;
                v334[4] = v312;
                v313 = _Block_copy(v334);
                v313[2](v313, 0);
                v313[2](v313, 1);
              }

              v309 = objc_msgSend_countByEnumeratingWithState_objects_count_(v292, v314, v316, v317, v318, v319, &v335, v353, 16, v315);
            }

            while (v309);
          }

LABEL_53:
        }

        v251 = objc_msgSend_countByEnumeratingWithState_objects_count_(v321, v252, v257, v258, v259, v260, &v340, v354, 16, v256);
        if (!v251)
        {
LABEL_55:

          break;
        }
      }
    }

    v103 = v323;
  }
}

- (void)upgradeFromOldSectionWithPageSize:(CGSize)size leftMargin:(double)margin rightMargin:(double)rightMargin topMargin:(double)topMargin bottomMargin:(double)bottomMargin headerMargin:(double)headerMargin footerMargin:(double)footerMargin
{
  height = size.height;
  width = size.width;
  objc_msgSend_willModifyForUpgrade(self, a2, size, *&size.height, *&margin, *&rightMargin, v9, v10, v11, v12);
  self->_pageSize.width = width;
  self->_pageSize.height = height;
  self->_pageScale = 1.0;
  self->_leftMargin = margin;
  self->_rightMargin = rightMargin;
  self->_topMargin = topMargin;
  self->_bottomMargin = bottomMargin;
  self->_headerMargin = headerMargin;
  self->_footerMargin = footerMargin;
}

- (void)setExportViewModeForCTMarkup:(BOOL)markup deletions:(BOOL)deletions paginatedPageController:(id)controller
{
  deletionsCopy = deletions;
  markupCopy = markup;
  controllerCopy = controller;
  v17 = objc_msgSend_documentRoot(self, v8, v13, v14, v15, v16, v9, v10, v11, v12);
  v27 = objc_msgSend_uiState(v17, v18, v23, v24, v25, v26, v19, v20, v21, v22);
  if (objc_msgSend_showsCTMarkup(v27, v28, v33, v34, v35, v36, v29, v30, v31, v32) == markupCopy)
  {
    v55 = objc_msgSend_documentRoot(self, v37, v42, v43, v44, v45, v38, v39, v40, v41);
    v65 = objc_msgSend_uiState(v55, v56, v61, v62, v63, v64, v57, v58, v59, v60);
    v75 = objc_msgSend_showsCTDeletions(v65, v66, v71, v72, v73, v74, v67, v68, v69, v70);

    if (v75 == deletionsCopy)
    {
      goto LABEL_5;
    }
  }

  else
  {
  }

  v76 = objc_msgSend_documentRoot(self, v46, v51, v52, v53, v54, v47, v48, v49, v50);
  v86 = objc_msgSend_uiState(v76, v77, v82, v83, v84, v85, v78, v79, v80, v81);
  objc_msgSend_setShowsCTMarkup_(v86, v87, v91, v92, v93, v94, markupCopy, v88, v89, v90);

  v104 = objc_msgSend_uiState(v76, v95, v100, v101, v102, v103, v96, v97, v98, v99);
  objc_msgSend_setShowsCTDeletions_(v104, v105, v109, v110, v111, v112, deletionsCopy, v106, v107, v108);

  objc_msgSend_changeTrackingVisibilityDidChange(controllerCopy, v113, v118, v119, v120, v121, v114, v115, v116, v117);
LABEL_5:
}

- (BOOL)shouldShowChangeKind:(int)kind date:(id)date
{
  result = objc_msgSend_shouldShowChangeTrackingMarkup(self, a2, v6, v7, v8, v9, *&kind, date, v4, v5);
  if (kind != 2)
  {
    return 1;
  }

  return result;
}

- (void)didAddDrawable:(id)drawable
{
  drawableCopy = drawable;
  v13 = objc_msgSend_owningAttachment(drawableCopy, v4, v9, v10, v11, v12, v5, v6, v7, v8);
  v23 = v13;
  if (!v13 || objc_msgSend_isDrawable(v13, v14, v19, v20, v21, v22, v15, v16, v17, v18) && objc_msgSend_isAnchored(v23, v24, v29, v30, v31, v32, v25, v26, v27, v28) && (objc_msgSend_isPartitioned(v23, v33, v38, v39, v40, v41, v34, v35, v36, v37) & 1) == 0)
  {
    v42 = objc_msgSend_drawablesZOrder(self, v14, v19, v20, v21, v22, v15, v16, v17, v18);
    objc_msgSend_addDrawable_(v42, v43, v47, v48, v49, v50, drawableCopy, v44, v45, v46);
  }
}

- (void)willRemoveDrawable:(id)drawable
{
  drawableCopy = drawable;
  v13 = objc_msgSend_owningAttachment(drawableCopy, v4, v9, v10, v11, v12, v5, v6, v7, v8);
  v23 = v13;
  if (!v13 || objc_msgSend_isDrawable(v13, v14, v19, v20, v21, v22, v15, v16, v17, v18) && objc_msgSend_isAnchored(v23, v24, v29, v30, v31, v32, v25, v26, v27, v28) && (objc_msgSend_isPartitioned(v23, v33, v38, v39, v40, v41, v34, v35, v36, v37) & 1) == 0)
  {
    v42 = objc_msgSend_drawablesZOrder(self, v14, v19, v20, v21, v22, v15, v16, v17, v18);
    objc_msgSend_removeDrawable_(v42, v43, v47, v48, v49, v50, drawableCopy, v44, v45, v46);
  }
}

- (void)setIndex:(int)index forObject:(id)object
{
  LODWORD(v4) = index;
  objectCopy = object;
  if (v4 != -1)
  {
    v143 = objectCopy;
    v11 = TSUProtocolCast();
    if (!v11)
    {
LABEL_15:

      objectCopy = v143;
      goto LABEL_16;
    }

    v16 = objc_msgSend_indexForObject_(self, v7, v12, v13, v14, v15, v11, v8, v9, v10, &unk_2885108A0);
    LODWORD(v26) = v16;
    if (v16 == -1)
    {
      v61 = MEMORY[0x277D81150];
      v62 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v22, v23, v24, v25, "[TPDocumentRoot setIndex:forObject:]", v19, v20, v21);
      v71 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v63, v67, v68, v69, v70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm", v64, v65, v66);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v61, v72, v73, v74, v75, v76, v62, v71, 3780, 0, "Object does not currently have a z-index.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v77, v82, v83, v84, v85, v78, v79, v80, v81);
      goto LABEL_15;
    }

    if (v16 >= v4)
    {
      v4 = v4;
    }

    else
    {
      v4 = (v4 + 1);
    }

    if ((v4 & 0x80000000) != 0 || v16 < 0)
    {
      v27 = MEMORY[0x277D81150];
      v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v22, v23, v24, v25, "[TPDocumentRoot setIndex:forObject:]", v19, v20, v21);
      v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, v33, v34, v35, v36, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm", v30, v31, v32);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v38, v39, v40, v41, v42, v28, v37, 3785, 0, "Index must not be negative");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v43, v48, v49, v50, v51, v44, v45, v46, v47);
    }

    v56 = objc_msgSend_drawablesZOrder(self, v17, v22, v23, v24, v25, v18, v19, v20, v21);
    if ((v26 & 0x80000000) != 0)
    {
      v86 = MEMORY[0x277D81150];
      v87 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, v57, v58, v59, v60, "[TPDocumentRoot setIndex:forObject:]", v53, v54, v55);
      v96 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v88, v92, v93, v94, v95, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm", v89, v90, v91);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v86, v97, v98, v99, v100, v101, v87, v96, 3786, 0, "Out-of-bounds type assignment was clamped to min");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v102, v107, v108, v109, v110, v103, v104, v105, v106);
      v26 = 0;
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v26 = v26;
      if ((v4 & 0x80000000) == 0)
      {
LABEL_12:
        objc_msgSend_moveDrawableAtZOrder_toZOrder_(v56, v52, v57, v58, v59, v60, v26, v4, v54, v55);
LABEL_13:

        goto LABEL_15;
      }
    }

    v111 = MEMORY[0x277D81150];
    v112 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, v57, v58, v59, v60, "[TPDocumentRoot setIndex:forObject:]", v53, v54, v55);
    v121 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v113, v117, v118, v119, v120, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm", v114, v115, v116);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v111, v122, v123, v124, v125, v126, v112, v121, 3786, 0, "Out-of-bounds type assignment was clamped to min");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v127, v132, v133, v134, v135, v128, v129, v130, v131);
    objc_msgSend_moveDrawableAtZOrder_toZOrder_(v56, v136, v139, v140, v141, v142, v26, 0, v137, v138);
    goto LABEL_13;
  }

LABEL_16:
}

- (int)indexForObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  v5 = TSUDynamicCast();
  v15 = v5;
  if (v5)
  {
    v16 = objc_msgSend_drawable(v5, v6, v11, v12, v13, v14, v7, v8, v9, v10);

    objectCopy = v16;
  }

  v22 = TSUProtocolCast();
  if (v22)
  {
    v27 = objc_msgSend_drawablesZOrder(self, v17, v23, v24, v25, v26, v18, v19, v20, v21, &unk_2885108A0);
    v36 = objc_msgSend_zOrderOfDrawable_(v27, v28, v32, v33, v34, v35, v22, v29, v30, v31);
  }

  else
  {
    v36 = -1;
  }

  return v36;
}

- (unint64_t)rootIndexForObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  v10 = TSUDynamicCast();
  if (!v10 || (objc_msgSend_floatingDrawables(self, v5, v11, v12, v13, v14, v6, v7, v8, v9), v15 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend_pageIndexForDrawable_(v15, v16, v20, v21, v22, v23, v10, v17, v18, v19), v15, v24 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v25 = MEMORY[0x277D81150];
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v11, v12, v13, v14, "[TPDocumentRoot rootIndexForObject:]", v7, v8, v9);
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, v31, v32, v33, v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm", v28, v29, v30);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v36, v37, v38, v39, v40, v26, v35, 3818, 0, "Drawable isn't on a page.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v41, v46, v47, v48, v49, v42, v43, v44, v45);
    v24 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v24;
}

- (id)resolverContainerForName:(id)name caseSensitive:(BOOL)sensitive
{
  if (objc_msgSend_length(name, a2, v6, v7, v8, v9, name, sensitive, v4, v5))
  {
    selfCopy = 0;
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)resolverContainerNamesMatchingPrefix:(id)prefix
{
  if (objc_msgSend_length(prefix, a2, v6, v7, v8, v9, prefix, v3, v4, v5))
  {
    return 0;
  }

  else
  {
    return &unk_28850DCD0;
  }
}

- (id)resolverMatchingName:(id)name contextResolver:(id)resolver
{
  nameCopy = name;
  resolverCopy = resolver;
  tablesWithUniqueNames = self->_tablesWithUniqueNames;
  if (tablesWithUniqueNames)
  {
    v18 = objc_msgSend_objectForKey_(tablesWithUniqueNames, v7, v13, v14, v15, v16, nameCopy, v9, v10, v11);
  }

  else
  {
    v19 = objc_msgSend_calculationEngine(self, v7, v13, v14, v15, v16, v8, v9, v10, v11);
    v29 = objc_msgSend_tablesByName(v19, v20, v25, v26, v27, v28, v21, v22, v23, v24);
    v18 = objc_msgSend_resolverMatchingName_(v29, v30, v34, v35, v36, v37, nameCopy, v31, v32, v33);
  }

  return v18;
}

- (id)resolverMatchingName:(id)name contextContainerName:(id)containerName
{
  v10 = objc_msgSend_resolverMatchingName_contextResolver_(self, a2, v6, v7, v8, v9, name, 0, v4, v5);

  return v10;
}

- (id)resolversMatchingPrefix:(id)prefix
{
  prefixCopy = prefix;
  v19 = objc_msgSend_array(MEMORY[0x277CBEB18], v5, v10, v11, v12, v13, v6, v7, v8, v9);
  if (!self->_tablesWithUniqueNames)
  {
    v43 = objc_msgSend_calculationEngine(self, v14, v20, v21, v22, v23, v15, v16, v17, v18);
    v63 = objc_msgSend_tablesByName(v43, v54, v59, v60, v61, v62, v55, v56, v57, v58);
    v45 = objc_msgSend_resolversMatchingPrefix_(v63, v64, v68, v69, v70, v71, prefixCopy, v65, v66, v67);

    goto LABEL_5;
  }

  if (objc_msgSend_length(prefixCopy, v14, v20, v21, v22, v23, v15, v16, v17, v18))
  {
    v33 = objc_msgSend_documentLocale(self, v24, v29, v30, v31, v32, v25, v26, v27, v28);
    v43 = objc_msgSend_locale(v33, v34, v39, v40, v41, v42, v35, v36, v37, v38);

    tablesWithUniqueNames = self->_tablesWithUniqueNames;
    v75[0] = MEMORY[0x277D85DD0];
    v75[1] = 3221225472;
    v75[2] = sub_27601269C;
    v75[3] = &unk_27A6A9060;
    v76 = prefixCopy;
    v77 = v43;
    v45 = v19;
    v78 = v45;
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(tablesWithUniqueNames, v46, v50, v51, v52, v53, v75, v47, v48, v49);

LABEL_5:
    v72 = v45;
    v19 = v72;
    goto LABEL_7;
  }

  v72 = objc_msgSend_allValues(self->_tablesWithUniqueNames, v24, v29, v30, v31, v32, v25, v26, v27, v28);
LABEL_7:
  v73 = v72;

  return v73;
}

- (id)resolverMatchingName:(id)name
{
  v9 = objc_msgSend_resolverMatchingName_contextResolver_(self, a2, v5, v6, v7, v8, name, 0, v3, v4);

  return v9;
}

- (BOOL)resolverNameIsUsed:(id)used
{
  usedCopy = used;
  tablesWithUniqueNames = self->_tablesWithUniqueNames;
  if (tablesWithUniqueNames)
  {
    v15 = objc_msgSend_objectForKey_(tablesWithUniqueNames, v4, v10, v11, v12, v13, usedCopy, v6, v7, v8);
    IsUsed = v15 != 0;
  }

  else
  {
    v15 = objc_msgSend_calculationEngine(self, v4, v10, v11, v12, v13, v5, v6, v7, v8);
    v26 = objc_msgSend_tablesByName(v15, v17, v22, v23, v24, v25, v18, v19, v20, v21);
    IsUsed = objc_msgSend_resolverNameIsUsed_(v26, v27, v31, v32, v33, v34, usedCopy, v28, v29, v30);
  }

  return IsUsed;
}

- (unsigned)nextUntitledResolverIndex
{
  tableNameCounter = self->_tableNameCounter;
  self->_tableNameCounter = tableNameCounter + 1;
  return tableNameCounter;
}

- (void)addRemappedTableName:(id)name
{
  nameCopy = name;
  remappedTableNames = self->_remappedTableNames;
  v15 = nameCopy;
  if (!remappedTableNames)
  {
    v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v14 = self->_remappedTableNames;
    self->_remappedTableNames = v13;

    remappedTableNames = self->_remappedTableNames;
    nameCopy = v15;
  }

  objc_msgSend_addObject_(remappedTableNames, nameCopy, v8, v9, v10, v11, nameCopy, v5, v6, v7);
}

- (void)clearRemappedTableNames
{
  remappedTableNames = self->_remappedTableNames;
  self->_remappedTableNames = 0;
}

- (id)UIStateForChart:(id)chart
{
  chartCopy = chart;
  v14 = objc_msgSend_uiState(self, v5, v10, v11, v12, v13, v6, v7, v8, v9);
  v23 = objc_msgSend_UIStateForChart_(v14, v15, v19, v20, v21, v22, chartCopy, v16, v17, v18);

  return v23;
}

- (void)setUIState:(id)state forChart:(id)chart
{
  stateCopy = state;
  chartCopy = chart;
  if (objc_msgSend_suppressViewStateCapture(self, v7, v12, v13, v14, v15, v8, v9, v10, v11))
  {
    v25 = MEMORY[0x277D81150];
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v21, v22, v23, v24, "[TPDocumentRoot setUIState:forChart:]", v18, v19, v20);
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, v31, v32, v33, v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm", v28, v29, v30);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v36, v37, v38, v39, v40, v26, v35, 3946, 0, "View state capture should not be suppressed.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v41, v46, v47, v48, v49, v42, v43, v44, v45);
  }

  v50 = objc_msgSend_uiState(self, v16, v21, v22, v23, v24, v17, v18, v19, v20);
  objc_msgSend_setUIState_forChart_(v50, v51, v54, v55, v56, v57, stateCopy, chartCopy, v52, v53);

  objc_msgSend_invalidateViewState(self, v58, v63, v64, v65, v66, v59, v60, v61, v62);
}

- (BOOL)prepareAndValidateSidecarViewStateRootWithVersionUUIDMismatch:(id)mismatch sidecarDocumentRevision:(id)revision originalDocumentViewStateRoot:(id)root
{
  mismatchCopy = mismatch;
  objc_opt_class();
  TSUDynamicCast();

  return 0;
}

- (int64_t)pageViewState
{
  v10 = objc_msgSend_uiState(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v20 = objc_msgSend_pageViewState(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);

  return v20;
}

- (id)pCreateBlankPageTemplate
{
  v11 = objc_msgSend_pBlankPageTemplate(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  if (!v11)
  {
    v12 = [TPPageTemplate alloc];
    v22 = objc_msgSend_context(self, v13, v18, v19, v20, v21, v14, v15, v16, v17);
    v32 = objc_msgSend_blankPageTemplateName(self, v23, v28, v29, v30, v31, v24, v25, v26, v27);
    v11 = objc_msgSend_initWithContext_name_placeholderDrawables_placeholderTagsInZOrder_sectionTemplateDrawables_(v12, v33, v34, v35, v36, v37, v22, v32, MEMORY[0x277CBEC10], MEMORY[0x277CBEBF8], 0);

    v38 = objc_alloc(MEMORY[0x277CCAD78]);
    v47 = objc_msgSend_initWithUUIDString_(v38, v39, v43, v44, v45, v46, @"6EC83440-F231-4439-8E15-2D32D699FA7F", v40, v41, v42);
    objc_msgSend_setObjectUUID_(v11, v48, v52, v53, v54, v55, v47, v49, v50, v51);

    objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(v11, v56, v59, v60, v61, v62, self, 0, v57, v58);
    pageTemplates = self->_pageTemplates;
    if (!pageTemplates)
    {
      v73 = objc_msgSend_array(MEMORY[0x277CBEB18], v63, v68, v69, v70, v71, v64, v65, v66, v67);
      v74 = self->_pageTemplates;
      self->_pageTemplates = v73;

      pageTemplates = self->_pageTemplates;
    }

    objc_msgSend_addObject_(pageTemplates, v63, v68, v69, v70, v71, v11, v65, v66, v67);
    objc_msgSend_wasAddedToDocumentRoot_dolcContext_(v11, v75, v78, v79, v80, v81, self, 0, v76, v77);
  }

  v82 = v11;

  return v82;
}

- (id)pBlankPageTemplate
{
  v49 = *MEMORY[0x277D85DE8];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v2 = self->_pageTemplates;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, v5, v6, v7, v8, &v44, v48, 16, v4);
  if (v14)
  {
    v19 = *v45;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v45 != v19)
        {
          objc_enumerationMutation(v2);
        }

        v21 = *(*(&v44 + 1) + 8 * i);
        v22 = objc_msgSend_objectUUID(v21, v9, v15, v16, v17, v18, v10, v11, v12, v13, v44);
        v32 = objc_msgSend_UUIDString(v22, v23, v28, v29, v30, v31, v24, v25, v26, v27);
        isEqualToString = objc_msgSend_isEqualToString_(v32, v33, v37, v38, v39, v40, @"6EC83440-F231-4439-8E15-2D32D699FA7F", v34, v35, v36);

        if (isEqualToString)
        {
          v42 = v21;
          goto LABEL_11;
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v9, v15, v16, v17, v18, &v44, v48, 16, v13);
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v42 = 0;
LABEL_11:

  return v42;
}

- (void)pUpgradeSection:(id)section documentVersion:(unint64_t)version
{
  sectionCopy = section;
  if (*MEMORY[0x277D810D8] <= version)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v12, v13, v14, v15, "[TPDocumentRoot pUpgradeSection:documentVersion:]", v8, v9, v10);
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm", v19, v20, v21);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v27, v28, v29, v30, v31, v17, v26, 4293, 0, "didn't expect to have a document section in this version of document");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v37, v38, v39, v40, v33, v34, v35, v36);
  }

  if (objc_msgSend_sectionCount(self->_bodyStorage, v6, v12, v13, v14, v15, v7, v8, v9, v10) != 1)
  {
    v50 = MEMORY[0x277D81150];
    v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, v46, v47, v48, v49, "[TPDocumentRoot pUpgradeSection:documentVersion:]", v43, v44, v45);
    v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, v56, v57, v58, v59, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm", v53, v54, v55);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v50, v61, v62, v63, v64, v65, v51, v60, 4294, 0, "unexpected section count when upgrading document section");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v66, v71, v72, v73, v74, v67, v68, v69, v70);
  }

  objc_msgSend_willModifyForUpgrade(self, v41, v46, v47, v48, v49, v42, v43, v44, v45);
  v84 = objc_msgSend_stylesheet(self, v75, v80, v81, v82, v83, v76, v77, v78, v79);
  v85 = objc_alloc(MEMORY[0x277D80660]);
  v93 = objc_msgSend_initWithRootModelObject_filter_(v85, v86, v89, v90, v91, v92, sectionCopy, 0, v87, v88);
  v110[0] = MEMORY[0x277D85DD0];
  v110[1] = 3221225472;
  v110[2] = sub_2760130E0;
  v110[3] = &unk_27A6A9088;
  v94 = v84;
  v111 = v94;
  objc_msgSend_enumerateUsingBlock_(v93, v95, v99, v100, v101, v102, v110, v96, v97, v98);
  objc_msgSend_nonUndoableAppendSection_charIndex_(self->_bodyStorage, v103, v106, v107, v108, v109, sectionCopy, 0, v104, v105);
}

- (BOOL)p_isUniquePageTemplateName:(id)name
{
  v49 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v13 = objc_msgSend_pageTemplates(self, v5, 0, v10, v11, v12, v6, v7, v8, v9, 0);
  v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, v16, v17, v18, v19, &v44, v48, 16, v15);
  if (v25)
  {
    v30 = *v45;
    while (2)
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v45 != v30)
        {
          objc_enumerationMutation(v13);
        }

        v32 = objc_msgSend_name(*(*(&v44 + 1) + 8 * i), v20, v26, v27, v28, v29, v21, v22, v23, v24);
        isEqualToString = objc_msgSend_isEqualToString_(v32, v33, v37, v38, v39, v40, nameCopy, v34, v35, v36);

        if (isEqualToString)
        {
          v42 = 0;
          goto LABEL_11;
        }
      }

      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v20, v26, v27, v28, v29, &v44, v48, 16, v24);
      if (v25)
      {
        continue;
      }

      break;
    }
  }

  v42 = 1;
LABEL_11:

  return v42;
}

- (BOOL)documentAllowsPencilAnnotationsOnModel:(id)model
{
  modelCopy = model;
  v25.receiver = self;
  v25.super_class = TPDocumentRoot;
  if ([(TPDocumentRoot *)&v25 documentAllowsPencilAnnotationsOnModel:modelCopy]&& (objc_msgSend_sectionTemplatePageOwningModel_(self, v5, v9, v10, v11, v12, modelCopy, v6, v7, v8), v13 = objc_claimAutoreleasedReturnValue(), v13, !v13))
  {
    objc_opt_class();
    v16 = TSUDynamicCast();
    v14 = objc_msgSend_p_drawableInfoIsOwnedByATPPageTemplate_(self, v17, v21, v22, v23, v24, v16, v18, v19, v20) ^ 1;
  }

  else
  {
    LOBYTE(v14) = 0;
  }

  return v14;
}

- (BOOL)hasPencilAnnotations
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v5.n128_u64[0] = 3221225472;
  v11[1] = 3221225472;
  v11[2] = sub_276013454;
  v11[3] = &unk_27A6A90B0;
  v11[4] = &v12;
  objc_msgSend_enumeratePencilAnnotationsUsingBlock_(self, a2, v5, v6, v7, v8, v11, v2, v3, v4);
  v9 = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  return v9;
}

- (double)currentDesiredPencilAnnotationDrawingScale
{
  v45 = 0;
  v46 = &v45;
  v6.n128_u64[0] = *MEMORY[0x277D80808];
  v47 = 0x2020000000;
  v48 = v6.n128_u64[0];
  v44[0] = MEMORY[0x277D85DD0];
  v5.n128_u64[0] = 3221225472;
  v44[1] = 3221225472;
  v44[2] = sub_2760135D4;
  v44[3] = &unk_27A6A90B0;
  v44[4] = &v45;
  objc_msgSend_enumeratePencilAnnotationsUsingBlock_(self, a2, v5, v6, v7, v8, v44, v2, v3, v4);
  v17 = v46[3];
  if (v17 <= 0.0)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v13, v14, v15, v16, "[TPDocumentRoot currentDesiredPencilAnnotationDrawingScale]", v10, v11, v12);
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, v24, v25, v26, v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm", v21, v22, v23);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v29, v30, v31, v32, v33, v19, v28, 4817, 0, "should have a valid pencil annotation scale");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v39, v40, v41, v42, v35, v36, v37, v38);
    v17 = v46[3];
  }

  _Block_object_dispose(&v45, 8);
  return v17;
}

- (BOOL)hasTrackedChanges
{
  v10 = objc_msgSend_storagesWithChanges(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v20 = objc_msgSend_count(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15) != 0;

  return v20;
}

- (id)storagesWithChanges
{
  v48 = *MEMORY[0x277D85DE8];
  v11 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v12 = objc_opt_class();
  v21 = objc_msgSend_modelEnumeratorForObjectsOfClass_(self, v13, v17, v18, v19, v20, v12, v14, v15, v16, 0);
  v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, v24, v25, v26, v27, &v43, v47, 16, v23);
  if (v28)
  {
    v38 = v28;
    v39 = *v44;
    do
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v44 != v39)
        {
          objc_enumerationMutation(v21);
        }

        v41 = *(*(&v43 + 1) + 8 * i);
        if (objc_msgSend_hasTrackedChanges(v41, v29, v34, v35, v36, v37, v30, v31, v32, v33))
        {
          objc_msgSend_addObject_(v11, v29, v34, v35, v36, v37, v41, v31, v32, v33);
        }
      }

      v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v29, v34, v35, v36, v37, &v43, v47, 16, v33);
    }

    while (v38);
  }

  return v11;
}

- (int64_t)footnoteKind
{
  v10 = objc_msgSend_settings(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v20 = objc_msgSend_footnoteKind(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);

  return v20;
}

- (double)footnoteGap
{
  v10 = objc_msgSend_settings(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v20 = objc_msgSend_footnoteGap(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);

  return v20;
}

@end