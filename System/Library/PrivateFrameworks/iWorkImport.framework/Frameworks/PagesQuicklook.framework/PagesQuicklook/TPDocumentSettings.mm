@interface TPDocumentSettings
- (TPDocumentSettings)initWithContext:(id)context;
- (id)stringWithCurrentDate;
- (int64_t)basicFootnoteFormat;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)resetForNewDocumentFromTemplate:(id)template locale:(id)locale;
- (void)saveToArchiver:(id)archiver;
- (void)setAnnotationsVisible:(BOOL)visible;
- (void)setAutoHyphenation:(BOOL)hyphenation;
- (void)setBibliographyFormat:(id)format;
- (void)setCTBubblesVisibility:(int)visibility;
- (void)setChangeBarsVisible:(BOOL)visible;
- (void)setCopyMovies:(BOOL)movies;
- (void)setCopyTemplateAssets:(BOOL)assets;
- (void)setCreationDate:(id)date;
- (void)setCreationLocale:(id)locale;
- (void)setDecimalTab:(id)tab;
- (void)setDocumentIsRTL:(BOOL)l;
- (void)setFootnoteFormat:(int64_t)format;
- (void)setFootnoteGap:(int64_t)gap;
- (void)setFootnoteKind:(int64_t)kind;
- (void)setFootnoteNumbering:(int64_t)numbering;
- (void)setFormatChangesVisible:(BOOL)visible;
- (void)setHasBody:(BOOL)body;
- (void)setHasFacingPages:(BOOL)pages;
- (void)setHasFooters:(BOOL)footers;
- (void)setHasHeaders:(BOOL)headers;
- (void)setHyperlinksEnabled:(BOOL)enabled;
- (void)setHyphenationLanguage:(id)language;
- (void)setLanguage:(id)language;
- (void)setOriginalTemplate:(id)template;
- (void)setPlaceholderAuthoring:(BOOL)authoring;
- (void)setQuickLookPreview:(BOOL)preview;
- (void)setSectionAuthoring:(BOOL)authoring;
- (void)setShowCTDeletions:(BOOL)deletions;
- (void)setShowCTMarkup:(BOOL)markup;
- (void)setTocLinksEnabled:(BOOL)enabled;
- (void)setUseLigatures:(BOOL)ligatures;
@end

@implementation TPDocumentSettings

- (void)setHasHeaders:(BOOL)headers
{
  if (self->_hasHeaders != headers)
  {
    objc_msgSend_willModify(self, a2, v6, v7, v8, v9, headers, v3, v4, v5);
    self->_hasHeaders = headers;
  }
}

- (void)setHasFooters:(BOOL)footers
{
  if (self->_hasFooters != footers)
  {
    objc_msgSend_willModify(self, a2, v6, v7, v8, v9, footers, v3, v4, v5);
    self->_hasFooters = footers;
  }
}

- (void)setHasFacingPages:(BOOL)pages
{
  if (self->_hasFacingPages != pages)
  {
    objc_msgSend_willModify(self, a2, v6, v7, v8, v9, pages, v3, v4, v5);
    self->_hasFacingPages = pages;
  }
}

- (void)setQuickLookPreview:(BOOL)preview
{
  if (self->_qlPreview != preview)
  {
    objc_msgSend_willModify(self, a2, v6, v7, v8, v9, preview, v3, v4, v5);
    self->_qlPreview = preview;
  }
}

- (void)setCopyMovies:(BOOL)movies
{
  if (self->_copyMovies != movies)
  {
    objc_msgSend_willModify(self, a2, v6, v7, v8, v9, movies, v3, v4, v5);
    self->_copyMovies = movies;
  }
}

- (void)setCopyTemplateAssets:(BOOL)assets
{
  if (self->_copyAssets != assets)
  {
    objc_msgSend_willModify(self, a2, v6, v7, v8, v9, assets, v3, v4, v5);
    self->_copyAssets = assets;
  }
}

- (void)setPlaceholderAuthoring:(BOOL)authoring
{
  if (self->_placeholderAuthoring != authoring)
  {
    objc_msgSend_willModify(self, a2, v6, v7, v8, v9, authoring, v3, v4, v5);
    self->_placeholderAuthoring = authoring;
  }
}

- (void)setHyperlinksEnabled:(BOOL)enabled
{
  if (self->_linksEnabled != enabled)
  {
    objc_msgSend_willModify(self, a2, v6, v7, v8, v9, enabled, v3, v4, v5);
    self->_linksEnabled = enabled;
  }
}

- (void)setAutoHyphenation:(BOOL)hyphenation
{
  if (self->_hyphenation != hyphenation)
  {
    objc_msgSend_willModify(self, a2, v6, v7, v8, v9, hyphenation, v3, v4, v5);
    self->_hyphenation = hyphenation;
  }
}

- (void)setUseLigatures:(BOOL)ligatures
{
  if (self->_ligatures != ligatures)
  {
    objc_msgSend_willModify(self, a2, v6, v7, v8, v9, ligatures, v3, v4, v5);
    self->_ligatures = ligatures;
  }
}

- (void)setTocLinksEnabled:(BOOL)enabled
{
  if (self->_tocLinksEnabled != enabled)
  {
    objc_msgSend_willModify(self, a2, v6, v7, v8, v9, enabled, v3, v4, v5);
    self->_tocLinksEnabled = enabled;
  }
}

- (void)setShowCTMarkup:(BOOL)markup
{
  if (self->_showCTMarkup != markup)
  {
    objc_msgSend_willModify(self, a2, v6, v7, v8, v9, markup, v3, v4, v5);
    self->_showCTMarkup = markup;
  }
}

- (void)setShowCTDeletions:(BOOL)deletions
{
  if (self->_showCTDeletions != deletions)
  {
    objc_msgSend_willModify(self, a2, v6, v7, v8, v9, deletions, v3, v4, v5);
    self->_showCTDeletions = deletions;
  }
}

- (void)setCTBubblesVisibility:(int)visibility
{
  if (self->_ctBubblesVisibility != visibility)
  {
    objc_msgSend_willModify(self, a2, v6, v7, v8, v9, *&visibility, v3, v4, v5);
    self->_ctBubblesVisibility = visibility;
  }
}

- (void)setChangeBarsVisible:(BOOL)visible
{
  if (self->_changeBarsVisible != visible)
  {
    objc_msgSend_willModify(self, a2, v6, v7, v8, v9, visible, v3, v4, v5);
    self->_changeBarsVisible = visible;
  }
}

- (void)setFormatChangesVisible:(BOOL)visible
{
  if (self->_formatChangesVisible != visible)
  {
    objc_msgSend_willModify(self, a2, v6, v7, v8, v9, visible, v3, v4, v5);
    self->_formatChangesVisible = visible;
  }
}

- (void)setAnnotationsVisible:(BOOL)visible
{
  if (self->_annotationsVisible != visible)
  {
    objc_msgSend_willModify(self, a2, v6, v7, v8, v9, visible, v3, v4, v5);
    self->_annotationsVisible = visible;
  }
}

- (void)setDocumentIsRTL:(BOOL)l
{
  if (self->_documentIsRTL != l)
  {
    objc_msgSend_willModify(self, a2, v6, v7, v8, v9, l, v3, v4, v5);
    self->_documentIsRTL = l;
  }
}

- (void)setSectionAuthoring:(BOOL)authoring
{
  if (self->_sectionAuthoring != authoring)
  {
    objc_msgSend_willModify(self, a2, v6, v7, v8, v9, authoring, v3, v4, v5);
    self->_sectionAuthoring = authoring;
  }
}

- (void)setFootnoteKind:(int64_t)kind
{
  if (self->_footnoteKind != kind)
  {
    objc_msgSend_willModify(self, a2, v6, v7, v8, v9, kind, v3, v4, v5);
    self->_footnoteKind = kind;
  }
}

- (void)setFootnoteFormat:(int64_t)format
{
  if (self->_footnoteFormat != format)
  {
    objc_msgSend_willModify(self, a2, v6, v7, v8, v9, format, v3, v4, v5);
    self->_footnoteFormat = format;
  }
}

- (void)setFootnoteNumbering:(int64_t)numbering
{
  if (self->_footnoteNumbering != numbering)
  {
    objc_msgSend_willModify(self, a2, v6, v7, v8, v9, numbering, v3, v4, v5);
    self->_footnoteNumbering = numbering;
  }
}

- (void)setFootnoteGap:(int64_t)gap
{
  if (self->_footnoteGap != gap)
  {
    objc_msgSend_willModify(self, a2, v6, v7, v8, v9, gap, v3, v4, v5);
    self->_footnoteGap = gap;
  }
}

- (void)setDecimalTab:(id)tab
{
  tabCopy = tab;
  if (self->_decimalTab != tabCopy)
  {
    v23 = tabCopy;
    objc_msgSend_willModify(self, tabCopy, v9, v10, v11, v12, v5, v6, v7, v8);
    v22 = objc_msgSend_copy(v23, v13, v18, v19, v20, v21, v14, v15, v16, v17);

    objc_storeStrong(&self->_decimalTab, v22);
    tabCopy = v22;
  }
}

- (void)setLanguage:(id)language
{
  languageCopy = language;
  if (self->_language != languageCopy)
  {
    v23 = languageCopy;
    objc_msgSend_willModify(self, languageCopy, v9, v10, v11, v12, v5, v6, v7, v8);
    v22 = objc_msgSend_copy(v23, v13, v18, v19, v20, v21, v14, v15, v16, v17);

    objc_storeStrong(&self->_language, v22);
    languageCopy = v22;
  }
}

- (void)setHyphenationLanguage:(id)language
{
  languageCopy = language;
  if (self->_hyphenationLanguage != languageCopy)
  {
    v23 = languageCopy;
    objc_msgSend_willModify(self, languageCopy, v9, v10, v11, v12, v5, v6, v7, v8);
    v22 = objc_msgSend_copy(v23, v13, v18, v19, v20, v21, v14, v15, v16, v17);

    objc_storeStrong(&self->_hyphenationLanguage, v22);
    languageCopy = v22;
  }
}

- (void)setCreationLocale:(id)locale
{
  localeCopy = locale;
  if (self->_creationLocale != localeCopy)
  {
    v23 = localeCopy;
    objc_msgSend_willModify(self, localeCopy, v9, v10, v11, v12, v5, v6, v7, v8);
    v22 = objc_msgSend_copy(v23, v13, v18, v19, v20, v21, v14, v15, v16, v17);

    objc_storeStrong(&self->_creationLocale, v22);
    localeCopy = v22;
  }
}

- (void)setOriginalTemplate:(id)template
{
  templateCopy = template;
  if (self->_originalTemplate != templateCopy)
  {
    v23 = templateCopy;
    objc_msgSend_willModify(self, templateCopy, v9, v10, v11, v12, v5, v6, v7, v8);
    v22 = objc_msgSend_copy(v23, v13, v18, v19, v20, v21, v14, v15, v16, v17);

    objc_storeStrong(&self->_originalTemplate, v22);
    templateCopy = v22;
  }
}

- (void)setCreationDate:(id)date
{
  dateCopy = date;
  if (self->_creationDate != dateCopy)
  {
    v23 = dateCopy;
    objc_msgSend_willModify(self, dateCopy, v9, v10, v11, v12, v5, v6, v7, v8);
    v22 = objc_msgSend_copy(v23, v13, v18, v19, v20, v21, v14, v15, v16, v17);

    objc_storeStrong(&self->_creationDate, v22);
    dateCopy = v22;
  }
}

- (void)setBibliographyFormat:(id)format
{
  formatCopy = format;
  if (self->_bibliographyFormat != formatCopy)
  {
    v23 = formatCopy;
    objc_msgSend_willModify(self, formatCopy, v9, v10, v11, v12, v5, v6, v7, v8);
    v22 = objc_msgSend_copy(v23, v13, v18, v19, v20, v21, v14, v15, v16, v17);

    objc_storeStrong(&self->_bibliographyFormat, v22);
    formatCopy = v22;
  }
}

- (int64_t)basicFootnoteFormat
{
  if (self->_footnoteFormat == 5)
  {
    return 0;
  }

  else
  {
    return self->_footnoteFormat;
  }
}

- (void)setHasBody:(BOOL)body
{
  objc_msgSend_willModify(self, a2, v6, v7, v8, v9, body, v3, v4, v5);
  self->_hasBody = body;
  v38 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v12, v17, v18, v19, v20, v13, v14, v15, v16);
  v30 = objc_msgSend_documentRoot(self, v21, v26, v27, v28, v29, v22, v23, v24, v25);
  objc_msgSend_postNotificationName_object_(v38, v31, v34, v35, v36, v37, @"TPHasBodyChanged", v30, v32, v33);
}

- (TPDocumentSettings)initWithContext:(id)context
{
  contextCopy = context;
  v99.receiver = self;
  v99.super_class = TPDocumentSettings;
  v5 = [(TPDocumentSettings *)&v99 initWithContext:contextCopy];
  v15 = v5;
  if (v5)
  {
    v5->_hasBody = 1;
    v5->_hasHeaders = 1;
    v5->_hasFooters = 1;
    v5->_hasFacingPages = 0;
    v5->_qlPreview = 1;
    v5->_copyMovies = 1;
    v5->_copyAssets = 1;
    v5->_placeholderAuthoring = 0;
    v5->_sectionAuthoring = 0;
    v5->_linksEnabled = 1;
    v5->_hyphenation = 0;
    v5->_ligatures = 0;
    v5->_showCTMarkup = 1;
    v5->_showCTDeletions = 1;
    v5->_ctBubblesVisibility = 0;
    v5->_changeBarsVisible = 1;
    v5->_formatChangesVisible = 1;
    v5->_annotationsVisible = 1;
    v5->_footnoteKind = 0;
    v5->_footnoteFormat = 0;
    v5->_footnoteNumbering = 0;
    v5->_footnoteGap = 10;
    v16 = objc_msgSend_currentLocale(MEMORY[0x277D81228], v6, v11, v12, v13, v14, v7, v8, v9, v10);
    v26 = v16;
    if (v16)
    {
      v27 = objc_msgSend_decimalSeparator(v16, v17, v22, v23, v24, v25, v18, v19, v20, v21);
      objc_msgSend_setDecimalTab_(v15, v28, v32, v33, v34, v35, v27, v29, v30, v31);

      v45 = objc_msgSend_languageCode(v26, v36, v41, v42, v43, v44, v37, v38, v39, v40);
      objc_msgSend_setLanguage_(v15, v46, v50, v51, v52, v53, v45, v47, v48, v49);

      objc_msgSend_setHyphenationLanguage_(v15, v54, v58, v59, v60, v61, &stru_288501738, v55, v56, v57);
      v71 = objc_msgSend_localeIdentifier(v26, v62, v67, v68, v69, v70, v63, v64, v65, v66);
      objc_msgSend_setCreationLocale_(v15, v72, v76, v77, v78, v79, v71, v73, v74, v75);
    }

    v89 = objc_msgSend_stringWithCurrentDate(v15, v80, v85, v86, v87, v88, v81, v82, v83, v84);
    objc_msgSend_setCreationDate_(v15, v90, v94, v95, v96, v97, v89, v91, v92, v93);
  }

  return v15;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v12 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, v8, v9, v10, v11, off_2812F85B8[4], v5, v6, v7);

  if (objc_msgSend_hasPreUFFVersion(unarchiverCopy, v13, v18, v19, v20, v21, v14, v15, v16, v17))
  {
    objc_msgSend_willModifyForUpgrade(self, v22, v27, v28, v29, v30, v23, v24, v25, v26);
    v31 = 1;
  }

  else
  {
    v31 = *(v12 + 120);
  }

  self->_hasBody = v31;
  self->_hasHeaders = *(v12 + 121);
  self->_hasFooters = *(v12 + 122);
  v32 = *(v12 + 16);
  if ((v32 & 0x8000) != 0)
  {
    v33 = *(v12 + 101);
  }

  else
  {
    v33 = 0;
  }

  self->_hasFacingPages = v33;
  self->_qlPreview = *(v12 + 123);
  self->_copyMovies = *(v12 + 124);
  self->_copyAssets = *(v12 + 125);
  self->_placeholderAuthoring = *(v12 + 88);
  self->_sectionAuthoring = *(v12 + 102);
  self->_linksEnabled = *(v12 + 126);
  self->_hyphenation = *(v12 + 89);
  self->_ligatures = *(v12 + 90);
  self->_tocLinksEnabled = *(v12 + 91);
  self->_documentIsRTL = *(v12 + 100);
  if (v32 < 0)
  {
    v34 = *(v12 + 127);
  }

  else
  {
    v34 = 1;
  }

  self->_showCTMarkup = v34 & 1;
  if ((v32 & 0x100000) != 0)
  {
    v35 = *(v12 + 116);
  }

  else
  {
    v35 = 1;
  }

  self->_showCTDeletions = v35 & 1;
  if ((v32 & 0x1000) != 0)
  {
    v36 = *(v12 + 92);
  }

  else
  {
    v36 = 0;
  }

  self->_ctBubblesVisibility = v36;
  v37 = *(v12 + 16);
  if ((v37 & 0x200000) != 0)
  {
    v38 = *(v12 + 117);
  }

  else
  {
    v38 = 1;
  }

  self->_changeBarsVisible = v38 & 1;
  if ((v37 & 0x400000) != 0)
  {
    v39 = *(v12 + 118);
  }

  else
  {
    v39 = 1;
  }

  self->_formatChangesVisible = v39 & 1;
  if ((v37 & 0x800000) != 0)
  {
    v40 = *(v12 + 119);
    self->_annotationsVisible = v40;
    if ((v40 & 1) == 0)
    {
      objc_msgSend_willModifyForUpgradeWithOptions_(self, v22, v27, v28, v29, v30, 2, v24, v25, v26);
      self->_annotationsVisible = 1;
      v37 = *(v12 + 16);
    }
  }

  else
  {
    self->_annotationsVisible = 1;
  }

  self->_footnoteKind = *(v12 + 96);
  v41 = *(v12 + 108);
  self->_footnoteFormat = *(v12 + 104);
  self->_footnoteNumbering = v41;
  if ((v37 & 0x80000) != 0)
  {
    v42 = *(v12 + 112);
  }

  else
  {
    v42 = 10;
  }

  self->_footnoteGap = v42;
  decimalTab = self->_decimalTab;
  self->_decimalTab = 0;

  if (*(v12 + 16))
  {
    v44 = objc_alloc(MEMORY[0x277CCACA8]);
    v53 = objc_msgSend_tsp_initWithProtobufString_(v44, v45, v49, v50, v51, v52, *(v12 + 24) & 0xFFFFFFFFFFFFFFFELL, v46, v47, v48);
    v54 = self->_decimalTab;
    self->_decimalTab = v53;
  }

  language = self->_language;
  self->_language = 0;

  if ((*(v12 + 16) & 2) != 0)
  {
    v56 = objc_alloc(MEMORY[0x277CCACA8]);
    v65 = objc_msgSend_tsp_initWithProtobufString_(v56, v57, v61, v62, v63, v64, *(v12 + 32) & 0xFFFFFFFFFFFFFFFELL, v58, v59, v60);
    v66 = self->_language;
    self->_language = v65;
  }

  hyphenationLanguage = self->_hyphenationLanguage;
  self->_hyphenationLanguage = 0;

  if ((*(v12 + 16) & 4) != 0)
  {
    v87 = objc_alloc(MEMORY[0x277CCACA8]);
    v86 = objc_msgSend_tsp_initWithProtobufString_(v87, v88, v92, v93, v94, v95, *(v12 + 40) & 0xFFFFFFFFFFFFFFFELL, v89, v90, v91);
  }

  else
  {
    if (!self->_language)
    {
      goto LABEL_38;
    }

    objc_msgSend_willModifyForUpgrade(self, v68, v73, v74, v75, v76, v69, v70, v71, v72);
    v86 = objc_msgSend_copy(self->_language, v77, v82, v83, v84, v85, v78, v79, v80, v81);
  }

  v96 = self->_hyphenationLanguage;
  self->_hyphenationLanguage = v86;

LABEL_38:
  creationLocale = self->_creationLocale;
  self->_creationLocale = 0;

  if ((*(v12 + 16) & 8) != 0)
  {
    v98 = objc_alloc(MEMORY[0x277CCACA8]);
    v107 = objc_msgSend_tsp_initWithProtobufString_(v98, v99, v103, v104, v105, v106, *(v12 + 48) & 0xFFFFFFFFFFFFFFFELL, v100, v101, v102);
    v108 = self->_creationLocale;
    self->_creationLocale = v107;
  }

  originalTemplate = self->_originalTemplate;
  self->_originalTemplate = 0;

  if ((*(v12 + 16) & 0x20) != 0)
  {
    v110 = objc_alloc(MEMORY[0x277CCACA8]);
    v119 = objc_msgSend_tsp_initWithProtobufString_(v110, v111, v115, v116, v117, v118, *(v12 + 64) & 0xFFFFFFFFFFFFFFFELL, v112, v113, v114);
    v120 = self->_originalTemplate;
    self->_originalTemplate = v119;
  }

  creationDate = self->_creationDate;
  self->_creationDate = 0;

  if ((*(v12 + 16) & 0x40) != 0)
  {
    v122 = objc_alloc(MEMORY[0x277CCACA8]);
    v131 = objc_msgSend_tsp_initWithProtobufString_(v122, v123, v127, v128, v129, v130, *(v12 + 72) & 0xFFFFFFFFFFFFFFFELL, v124, v125, v126);
    v132 = self->_creationDate;
    self->_creationDate = v131;
  }

  bibliographyFormat = self->_bibliographyFormat;
  self->_bibliographyFormat = 0;

  if ((*(v12 + 16) & 0x80) != 0)
  {
    v134 = objc_alloc(MEMORY[0x277CCACA8]);
    v143 = objc_msgSend_tsp_initWithProtobufString_(v134, v135, v139, v140, v141, v142, *(v12 + 80) & 0xFFFFFFFFFFFFFFFELL, v136, v137, v138);
    v144 = self->_bibliographyFormat;
    self->_bibliographyFormat = v143;
  }
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v12 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v5, v8, v9, v10, v11, sub_276002C30, off_2812F85B8[4], v6, v7);

  v13 = *(v12 + 16);
  *(v12 + 120) = self->_hasBody;
  *(v12 + 121) = self->_hasHeaders;
  hasFooters = self->_hasFooters;
  *(v12 + 16) = v13 | 0x7000000;
  *(v12 + 122) = hasFooters;
  objc_msgSend_setIgnoreAndPreserveRuleForField_message_(archiverCopy, v15, v18, v19, v20, v21, 34, v12, v16, v17);
  *(v12 + 101) = self->_hasFacingPages;
  *(v12 + 123) = self->_qlPreview;
  *(v12 + 124) = self->_copyMovies;
  *(v12 + 125) = self->_copyAssets;
  *(v12 + 88) = self->_placeholderAuthoring;
  *(v12 + 102) = self->_sectionAuthoring;
  *(v12 + 126) = self->_linksEnabled;
  *(v12 + 89) = self->_hyphenation;
  *(v12 + 90) = self->_ligatures;
  v31 = *(v12 + 16);
  *(v12 + 91) = self->_tocLinksEnabled;
  *(v12 + 100) = self->_documentIsRTL;
  *(v12 + 127) = self->_showCTMarkup;
  showCTDeletions = self->_showCTDeletions;
  v31 |= 0xF811CF00;
  *(v12 + 16) = v31;
  *(v12 + 116) = showCTDeletions;
  *(v12 + 92) = self->_ctBubblesVisibility;
  *(v12 + 117) = self->_changeBarsVisible;
  *(v12 + 118) = self->_formatChangesVisible;
  *(v12 + 119) = self->_annotationsVisible;
  *(v12 + 96) = self->_footnoteKind;
  *(v12 + 104) = self->_footnoteFormat;
  footnoteNumbering = self->_footnoteNumbering;
  *(v12 + 16) = v31 | 0xE63000;
  *(v12 + 108) = footnoteNumbering;
  footnoteGap = self->_footnoteGap;
  if (footnoteGap >= 0x80000000)
  {
    v49 = MEMORY[0x277D81150];
    v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, v27, v28, v29, v30, "[TPDocumentSettings saveToArchiver:]", v24, v25, v26);
    v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, v55, v56, v57, v58, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentSettings.mm", v52, v53, v54);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v49, v60, v61, v62, v63, v64, v50, v59, 378, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v65, v70, v71, v72, v73, v66, v67, v68, v69);
    LODWORD(footnoteGap) = 0x7FFFFFFF;
  }

  else if (footnoteGap <= 0xFFFFFFFF7FFFFFFFLL)
  {
    v74 = MEMORY[0x277D81150];
    v75 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, v27, v28, v29, v30, "[TPDocumentSettings saveToArchiver:]", v24, v25, v26);
    v84 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v76, v80, v81, v82, v83, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentSettings.mm", v77, v78, v79);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v74, v85, v86, v87, v88, v89, v75, v84, 378, 0, "Out-of-bounds type assignment was clamped to min");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v90, v95, v96, v97, v98, v91, v92, v93, v94);
    LODWORD(footnoteGap) = 0x80000000;
  }

  *(v12 + 16) |= 0x80000u;
  *(v12 + 112) = footnoteGap;
  decimalTab = self->_decimalTab;
  if (decimalTab)
  {
    v36 = objc_msgSend_UTF8String(decimalTab, v22, v27, v28, v29, v30, v23, v24, v25, v26);
    *(v12 + 16) |= 1u;
    sub_275FBA9EC(__p, v36);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v100 < 0)
    {
      operator delete(__p[0]);
    }
  }

  language = self->_language;
  if (language)
  {
    v38 = objc_msgSend_UTF8String(language, v22, v27, v28, v29, v30, v23, v24, v25, v26);
    *(v12 + 16) |= 2u;
    sub_275FBA9EC(__p, v38);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v100 < 0)
    {
      operator delete(__p[0]);
    }
  }

  hyphenationLanguage = self->_hyphenationLanguage;
  if (hyphenationLanguage)
  {
    v40 = objc_msgSend_UTF8String(hyphenationLanguage, v22, v27, v28, v29, v30, v23, v24, v25, v26);
    *(v12 + 16) |= 4u;
    sub_275FBA9EC(__p, v40);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v100 < 0)
    {
      operator delete(__p[0]);
    }
  }

  creationLocale = self->_creationLocale;
  if (creationLocale)
  {
    v42 = objc_msgSend_UTF8String(creationLocale, v22, v27, v28, v29, v30, v23, v24, v25, v26);
    *(v12 + 16) |= 8u;
    sub_275FBA9EC(__p, v42);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v100 < 0)
    {
      operator delete(__p[0]);
    }
  }

  originalTemplate = self->_originalTemplate;
  if (originalTemplate)
  {
    v44 = objc_msgSend_UTF8String(originalTemplate, v22, v27, v28, v29, v30, v23, v24, v25, v26);
    *(v12 + 16) |= 0x20u;
    sub_275FBA9EC(__p, v44);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v100 < 0)
    {
      operator delete(__p[0]);
    }
  }

  creationDate = self->_creationDate;
  if (creationDate)
  {
    v46 = objc_msgSend_UTF8String(creationDate, v22, v27, v28, v29, v30, v23, v24, v25, v26);
    *(v12 + 16) |= 0x40u;
    sub_275FBA9EC(__p, v46);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v100 < 0)
    {
      operator delete(__p[0]);
    }
  }

  bibliographyFormat = self->_bibliographyFormat;
  if (bibliographyFormat)
  {
    v48 = objc_msgSend_UTF8String(bibliographyFormat, v22, v27, v28, v29, v30, v23, v24, v25, v26);
    *(v12 + 16) |= 0x80u;
    sub_275FBA9EC(__p, v48);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v100 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

- (void)resetForNewDocumentFromTemplate:(id)template locale:(id)locale
{
  templateCopy = template;
  localeCopy = locale;
  objc_msgSend_setOriginalTemplate_(self, v7, v11, v12, v13, v14, templateCopy, v8, v9, v10);
  v24 = objc_msgSend_stringWithCurrentDate(self, v15, v20, v21, v22, v23, v16, v17, v18, v19);
  objc_msgSend_setCreationDate_(self, v25, v29, v30, v31, v32, v24, v26, v27, v28);

  objc_msgSend_setPlaceholderAuthoring_(self, v33, v37, v38, v39, v40, 0, v34, v35, v36);
  objc_msgSend_setHyperlinksEnabled_(self, v41, v45, v46, v47, v48, 1, v42, v43, v44);
  objc_msgSend_setQuickLookPreview_(self, v49, v53, v54, v55, v56, 1, v50, v51, v52);
  objc_msgSend_setCopyMovies_(self, v57, v61, v62, v63, v64, 1, v58, v59, v60);
  objc_msgSend_setCopyTemplateAssets_(self, v65, v69, v70, v71, v72, 1, v66, v67, v68);
  objc_msgSend_setFootnoteFormat_(self, v73, v77, v78, v79, v80, 0, v74, v75, v76);
  if (localeCopy)
  {
    v90 = objc_alloc(MEMORY[0x277D81228]);
    v99 = objc_msgSend_initWithLocale_(v90, v91, v95, v96, v97, v98, localeCopy, v92, v93, v94);
  }

  else
  {
    v99 = objc_msgSend_currentLocale(MEMORY[0x277D81228], v81, v86, v87, v88, v89, v82, v83, v84, v85);
  }

  v109 = v99;
  if (v99)
  {
    v114 = objc_msgSend_decimalSeparator(v99, v100, v105, v106, v107, v108, v101, v102, v103, v104);
    if (v114)
    {
      objc_msgSend_setDecimalTab_(self, v110, v115, v116, v117, v118, v114, v111, v112, v113);
    }

    v128 = objc_msgSend_languageCode(v109, v119, v124, v125, v126, v127, v120, v121, v122, v123);
    objc_msgSend_setLanguage_(self, v129, v133, v134, v135, v136, v128, v130, v131, v132);

    v146 = objc_msgSend_languageCode(v109, v137, v142, v143, v144, v145, v138, v139, v140, v141);
    v147 = TSUHasBiDiLanguage();
    objc_msgSend_setDocumentIsRTL_(self, v148, v152, v153, v154, v155, v147, v149, v150, v151);

    v169 = objc_msgSend_localeIdentifier(v109, v156, v161, v162, v163, v164, v157, v158, v159, v160);
    if (v169)
    {
      objc_msgSend_setCreationLocale_(self, v165, v170, v171, v172, v173, v169, v166, v167, v168);
    }

    v183 = objc_msgSend_locale(v109, v174, v179, v180, v181, v182, v175, v176, v177, v178);
    v184 = TSWPNumberTypeForLocale();

    if (v184 == 1)
    {
      objc_msgSend_setFootnoteFormat_(self, v185, v189, v190, v191, v192, 5, v186, v187, v188);
    }
  }
}

- (id)stringWithCurrentDate
{
  v2 = objc_alloc_init(MEMORY[0x277CBEAA8]);
  v3 = objc_alloc_init(MEMORY[0x277CCA968]);
  v13 = objc_msgSend_localTimeZone(MEMORY[0x277CBEBB0], v4, v9, v10, v11, v12, v5, v6, v7, v8);
  objc_msgSend_setTimeZone_(v3, v14, v18, v19, v20, v21, v13, v15, v16, v17);

  objc_msgSend_setDateFormat_(v3, v22, v26, v27, v28, v29, @"yyyy-MM-dd'T'HH:mm:ssZ", v23, v24, v25);
  v38 = objc_msgSend_stringFromDate_(v3, v30, v34, v35, v36, v37, v2, v31, v32, v33);

  return v38;
}

@end