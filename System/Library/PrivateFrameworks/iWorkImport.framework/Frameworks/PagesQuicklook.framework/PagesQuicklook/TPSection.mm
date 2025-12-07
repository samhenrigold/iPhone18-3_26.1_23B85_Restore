@interface TPSection
- (BOOL)isHeaderFooterEmpty:(int64_t)empty;
- (BOOL)isHeaderFooterVisible:(int64_t)visible;
- (CGSize)targetSizeForImageData:(id)data associatedHint:(id)hint;
- (NSArray)pageInfosForPropagation;
- (NSArray)sectionTemplatePages;
- (NSString)localizedPrettyDisplayStringLong;
- (NSString)localizedPrettyDisplayStringShort;
- (NSURL)url;
- (TPPageTemplate)pageTemplate;
- (TPSection)initWithContext:(id)context;
- (TPSection)initWithContext:(id)context section:(id)section;
- (TSWPStorage)parentStorage;
- (id)allDrawables;
- (id)childEnumerator;
- (id)copyWithContext:(id)context;
- (id)objectUUIDPath;
- (id)sectionTemplatePageOwningInfo:(id)info;
- (id)sectionTemplatePageOwningModel:(id)model;
- (void)acceptVisitor:(id)visitor;
- (void)adoptStylesheet:(id)stylesheet withMapper:(id)mapper;
- (void)i_clearPropertiesToDefaults;
- (void)i_copyHeadersAndFootersFrom:(id)from dolcContext:(id)context withBlock:(id)block;
- (void)i_ensureHeaderFooterStoragesExistWithStylesheet:(id)stylesheet;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)p_addAllDrawablesFromInfo:(id)info toMutableArray:(id)array;
- (void)p_unarchiveAndUpgrade:(id)upgrade archive:(const void *)archive;
- (void)p_upgradePageSizeAndMarginsFromObsoleteSettings:(id)settings;
- (void)saveToArchiver:(id)archiver;
- (void)setBackgroundFill:(id)fill;
- (void)setInheritPreviousHeaderFooter:(BOOL)footer;
- (void)setName:(id)name;
- (void)setParentStorage:(id)storage;
- (void)setSectionHyperlinkUUID:(id)d;
- (void)setSectionPageNumberKind:(unsigned int)kind;
- (void)setSectionPageNumberStart:(unsigned int)start;
- (void)setSectionStartKind:(unsigned int)kind;
- (void)setSectionTemplateEvenOddPagesDifferent:(BOOL)different;
- (void)setSectionTemplateFirstPageDifferent:(BOOL)different;
- (void)setSectionTemplateFirstPageHidesHeaderFooter:(BOOL)footer;
- (void)setSectionTemplatePageForFirstPage:(id)page;
- (void)wasAddedToDocumentRoot:(id)root dolcContext:(id)context;
- (void)wasRemovedFromDocumentRoot:(id)root;
- (void)willBeAddedToDocumentRoot:(id)root dolcContext:(id)context;
- (void)willBeRemovedFromDocumentRoot:(id)root;
@end

@implementation TPSection

- (void)setName:(id)name
{
  nameCopy = name;
  if (self->_name != nameCopy)
  {
    objc_msgSend_willModify(self, v5, v10, v11, v12, v13, v6, v7, v8, v9);
    objc_storeStrong(&self->_name, name);
  }
}

- (void)setInheritPreviousHeaderFooter:(BOOL)footer
{
  if (self->_inheritPreviousHeaderFooter != footer)
  {
    objc_msgSend_willModify(self, a2, v6, v7, v8, v9, footer, v3, v4, v5);
    self->_inheritPreviousHeaderFooter = footer;
  }
}

- (void)setSectionTemplateFirstPageDifferent:(BOOL)different
{
  if (self->_sectionTemplateFirstPageDifferent != different)
  {
    objc_msgSend_willModify(self, a2, v6, v7, v8, v9, different, v3, v4, v5);
    self->_sectionTemplateFirstPageDifferent = different;
  }
}

- (void)setSectionTemplateFirstPageHidesHeaderFooter:(BOOL)footer
{
  if (self->_sectionTemplateFirstPageHidesHeaderFooter != footer)
  {
    objc_msgSend_willModify(self, a2, v6, v7, v8, v9, footer, v3, v4, v5);
    self->_sectionTemplateFirstPageHidesHeaderFooter = footer;
  }
}

- (void)setSectionTemplateEvenOddPagesDifferent:(BOOL)different
{
  if (self->_sectionTemplateEvenOddPagesDifferent != different)
  {
    objc_msgSend_willModify(self, a2, v6, v7, v8, v9, different, v3, v4, v5);
    self->_sectionTemplateEvenOddPagesDifferent = different;
  }
}

- (void)setSectionStartKind:(unsigned int)kind
{
  if (self->_sectionStartKind != kind)
  {
    objc_msgSend_willModify(self, a2, v6, v7, v8, v9, *&kind, v3, v4, v5);
    self->_sectionStartKind = kind;
  }
}

- (void)setSectionPageNumberKind:(unsigned int)kind
{
  if (self->_sectionPageNumberKind != kind)
  {
    objc_msgSend_willModify(self, a2, v6, v7, v8, v9, *&kind, v3, v4, v5);
    self->_sectionPageNumberKind = kind;
  }
}

- (void)setSectionPageNumberStart:(unsigned int)start
{
  if (self->_sectionPageNumberStart != start)
  {
    objc_msgSend_willModify(self, a2, v6, v7, v8, v9, *&start, v3, v4, v5);
    self->_sectionPageNumberStart = start;
  }
}

- (TPSection)initWithContext:(id)context section:(id)section
{
  contextCopy = context;
  sectionCopy = section;
  v16 = objc_msgSend_initWithContext_(self, v8, v12, v13, v14, v15, contextCopy, v9, v10, v11);
  v26 = v16;
  if (sectionCopy && v16)
  {
    v27 = objc_msgSend_inheritPreviousHeaderFooter(sectionCopy, v17, v22, v23, v24, v25, v18, v19, v20, v21);
    objc_msgSend_setInheritPreviousHeaderFooter_(v26, v28, v32, v33, v34, v35, v27, v29, v30, v31);
    PageDifferent = objc_msgSend_sectionTemplateFirstPageDifferent(sectionCopy, v36, v41, v42, v43, v44, v37, v38, v39, v40);
    objc_msgSend_setSectionTemplateFirstPageDifferent_(v26, v46, v50, v51, v52, v53, PageDifferent, v47, v48, v49);
    PageHidesHeaderFooter = objc_msgSend_sectionTemplateFirstPageHidesHeaderFooter(sectionCopy, v54, v59, v60, v61, v62, v55, v56, v57, v58);
    objc_msgSend_setSectionTemplateFirstPageHidesHeaderFooter_(v26, v64, v68, v69, v70, v71, PageHidesHeaderFooter, v65, v66, v67);
    v81 = objc_msgSend_sectionTemplateEvenOddPagesDifferent(sectionCopy, v72, v77, v78, v79, v80, v73, v74, v75, v76);
    objc_msgSend_setSectionTemplateEvenOddPagesDifferent_(v26, v82, v86, v87, v88, v89, v81, v83, v84, v85);
    started = objc_msgSend_sectionStartKind(sectionCopy, v90, v95, v96, v97, v98, v91, v92, v93, v94);
    objc_msgSend_setSectionStartKind_(v26, v100, v104, v105, v106, v107, started, v101, v102, v103);
    v117 = objc_msgSend_sectionPageNumberKind(sectionCopy, v108, v113, v114, v115, v116, v109, v110, v111, v112);
    objc_msgSend_setSectionPageNumberKind_(v26, v118, v122, v123, v124, v125, v117, v119, v120, v121);
    v135 = objc_msgSend_sectionPageNumberStart(sectionCopy, v126, v131, v132, v133, v134, v127, v128, v129, v130);
    objc_msgSend_setSectionPageNumberStart_(v26, v136, v140, v141, v142, v143, v135, v137, v138, v139);
    v153 = objc_msgSend_name(sectionCopy, v144, v149, v150, v151, v152, v145, v146, v147, v148);
    objc_msgSend_setName_(v26, v154, v158, v159, v160, v161, v153, v155, v156, v157);

    v171 = objc_msgSend_backgroundFill(sectionCopy, v162, v167, v168, v169, v170, v163, v164, v165, v166);
    v181 = objc_msgSend_copy(v171, v172, v177, v178, v179, v180, v173, v174, v175, v176);
    objc_msgSend_setBackgroundFill_(v26, v182, v186, v187, v188, v189, v181, v183, v184, v185);

    v198 = 0;
    sectionTemplatePages = v26->_sectionTemplatePages;
    do
    {
      v200 = objc_msgSend_copyWithContext_(*&sectionCopy[v198 * 8 + 64], v190, v194, v195, v196, v197, contextCopy, v191, v192, v193);
      v201 = sectionTemplatePages[v198];
      sectionTemplatePages[v198] = v200;

      objc_msgSend_setSection_(sectionTemplatePages[v198++], v202, v206, v207, v208, v209, v26, v203, v204, v205);
    }

    while (v198 != 3);
  }

  return v26;
}

- (TPSection)initWithContext:(id)context
{
  contextCopy = context;
  v58.receiver = self;
  v58.super_class = TPSection;
  v5 = [(TPSection *)&v58 initWithContext:contextCopy];
  v6 = [TPSectionTemplatePage alloc];
  v15 = objc_msgSend_initWithSection_(v6, v7, v11, v12, v13, v14, v5, v8, v9, v10);
  v16 = v5->_sectionTemplatePages[0];
  v5->_sectionTemplatePages[0] = v15;

  v17 = [TPSectionTemplatePage alloc];
  v26 = objc_msgSend_initWithSection_(v17, v18, v22, v23, v24, v25, v5, v19, v20, v21);
  v27 = v5->_sectionTemplatePages[1];
  v5->_sectionTemplatePages[1] = v26;

  v28 = [TPSectionTemplatePage alloc];
  v37 = objc_msgSend_initWithSection_(v28, v29, v33, v34, v35, v36, v5, v30, v31, v32);
  v38 = v5->_sectionTemplatePages[2];
  v5->_sectionTemplatePages[2] = v37;

  objc_msgSend_i_clearPropertiesToDefaults(v5, v39, v44, v45, v46, v47, v40, v41, v42, v43);
  objc_msgSend_p_makeUserGuideStorage(v5, v48, v53, v54, v55, v56, v49, v50, v51, v52);

  return v5;
}

- (id)objectUUIDPath
{
  WeakRetained = objc_loadWeakRetained(&self->_parentStorage);
  v13 = objc_msgSend_objectUUIDPath(WeakRetained, v4, v9, v10, v11, v12, v5, v6, v7, v8);
  v23 = objc_msgSend_uuids(v13, v14, v19, v20, v21, v22, v15, v16, v17, v18);

  v24 = objc_alloc(MEMORY[0x277CBEB18]);
  v34 = objc_msgSend_count(v23, v25, v30, v31, v32, v33, v26, v27, v28, v29);
  v43 = objc_msgSend_initWithCapacity_(v24, v35, v39, v40, v41, v42, v34 + 1, v36, v37, v38);
  objc_msgSend_addObjectsFromArray_(v43, v44, v48, v49, v50, v51, v23, v45, v46, v47);
  v61 = objc_msgSend_objectUUID(self, v52, v57, v58, v59, v60, v53, v54, v55, v56);
  objc_msgSend_addObject_(v43, v62, v66, v67, v68, v69, v61, v63, v64, v65);

  v70 = objc_alloc(MEMORY[0x277D81360]);
  v79 = objc_msgSend_initWithArray_(v70, v71, v75, v76, v77, v78, v43, v72, v73, v74);

  return v79;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  objc_msgSend_i_clearPropertiesToDefaults(self, v5, v10, v11, v12, v13, v6, v7, v8, v9);
  v14 = unarchiverCopy;
  google::protobuf::internal::AssignDescriptors();
  v23 = objc_msgSend_messageWithDescriptor_(v14, v15, v19, v20, v21, v22, off_2812F85B8[26], v16, v17, v18);

  v33 = *(v23 + 16);
  if (v33)
  {
    v34 = objc_alloc(MEMORY[0x277CCACA8]);
    v43 = objc_msgSend_tsp_initWithProtobufString_(v34, v35, v39, v40, v41, v42, *(v23 + 96) & 0xFFFFFFFFFFFFFFFELL, v36, v37, v38);
    name = self->_name;
    self->_name = v43;

    v33 = *(v23 + 16);
  }

  if ((v33 & 0x40) != 0)
  {
    v45 = objc_alloc(MEMORY[0x277CCAD78]);
    if (*(v23 + 144))
    {
      v54 = objc_msgSend_tsp_initWithMessage_(v45, v46, v50, v51, v52, v53, *(v23 + 144), v47, v48, v49);
    }

    else
    {
      v54 = objc_msgSend_tsp_initWithMessage_(v45, v46, v50, v51, v52, v53, MEMORY[0x277D809E0], v47, v48, v49);
    }

    sectionHyperlinkUUID = self->_sectionHyperlinkUUID;
    self->_sectionHyperlinkUUID = v54;
  }

  v59 = objc_msgSend_preUFFVersion(v14, v24, v29, v30, v31, v32, v25, v26, v27, v28);
  if (v59 < *MEMORY[0x277D810D8])
  {
    objc_msgSend_p_unarchiveAndUpgrade_archive_(self, v56, v60, v61, v62, v63, v14, v23, v57, v58);
    goto LABEL_36;
  }

  if ((*(v23 + 16) & 2) != 0)
  {
    v75 = *(v23 + 104);
    v252[0] = MEMORY[0x277D85DD0];
    v252[1] = 3221225472;
    v252[2] = sub_275FCE2CC;
    v252[3] = &unk_27A6A8490;
    v252[4] = self;
    v76 = v14;
    v77 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v76, v78, v79, v80, v81, v82, v75, v77, 0, v252);
  }

  else
  {
    v64 = [TPSectionTemplatePage alloc];
    v73 = objc_msgSend_initWithSection_(v64, v65, v69, v70, v71, v72, self, v66, v67, v68);
    v74 = self->_sectionTemplatePages[0];
    self->_sectionTemplatePages[0] = v73;
  }

  if ((*(v23 + 16) & 4) != 0)
  {
    v94 = *(v23 + 112);
    v251[0] = MEMORY[0x277D85DD0];
    v251[1] = 3221225472;
    v251[2] = sub_275FCE350;
    v251[3] = &unk_27A6A8490;
    v251[4] = self;
    v95 = v14;
    v96 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v95, v97, v98, v99, v100, v101, v94, v96, 0, v251);
  }

  else
  {
    v83 = [TPSectionTemplatePage alloc];
    v92 = objc_msgSend_initWithSection_(v83, v84, v88, v89, v90, v91, self, v85, v86, v87);
    v93 = self->_sectionTemplatePages[1];
    self->_sectionTemplatePages[1] = v92;
  }

  if ((*(v23 + 16) & 8) != 0)
  {
    v120 = *(v23 + 120);
    v250[0] = MEMORY[0x277D85DD0];
    v250[1] = 3221225472;
    v250[2] = sub_275FCE3DC;
    v250[3] = &unk_27A6A8490;
    v250[4] = self;
    v121 = v14;
    v122 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v121, v123, v124, v125, v126, v127, v120, v122, 0, v250);
  }

  else
  {
    v102 = [TPSectionTemplatePage alloc];
    v111 = objc_msgSend_initWithSection_(v102, v103, v107, v108, v109, v110, self, v104, v105, v106);
    v112 = self->_sectionTemplatePages[2];
    self->_sectionTemplatePages[2] = v111;
  }

  v128 = *(v23 + 16);
  if ((v128 & 0x4000) != 0)
  {
    self->_inheritPreviousHeaderFooter = *(v23 + 171);
    if ((v128 & 0x800000) == 0)
    {
LABEL_21:
      if ((v128 & 0x2000000) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_30;
    }
  }

  else if ((v128 & 0x800000) == 0)
  {
    goto LABEL_21;
  }

  self->_sectionTemplateFirstPageDifferent = *(v23 + 204);
  if ((v128 & 0x2000000) == 0)
  {
LABEL_22:
    if ((v128 & 0x1000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_31;
  }

LABEL_30:
  self->_sectionTemplateFirstPageHidesHeaderFooter = *(v23 + 206);
  if ((v128 & 0x1000000) == 0)
  {
LABEL_23:
    if ((v128 & 0x200000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_32;
  }

LABEL_31:
  self->_sectionTemplateEvenOddPagesDifferent = *(v23 + 205);
  if ((v128 & 0x200000) == 0)
  {
LABEL_24:
    if ((v128 & 0x400000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_33;
  }

LABEL_32:
  self->_sectionStartKind = *(v23 + 196);
  v128 = *(v23 + 16);
  if ((v128 & 0x400000) == 0)
  {
LABEL_25:
    if ((v128 & 0x4000000) == 0)
    {
      goto LABEL_26;
    }

LABEL_34:
    self->_sectionPageNumberStart = *(v23 + 208);
    if ((*(v23 + 16) & 0x20) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

LABEL_33:
  self->_sectionPageNumberKind = *(v23 + 200);
  v128 = *(v23 + 16);
  if ((v128 & 0x4000000) != 0)
  {
    goto LABEL_34;
  }

LABEL_26:
  if ((v128 & 0x20) != 0)
  {
LABEL_35:
    v129 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80248], v113, v116, v117, v118, v119, *(v23 + 136), v14, v114, v115);
    backgroundFill = self->_backgroundFill;
    self->_backgroundFill = v129;
  }

LABEL_36:
  if (v59 > 0x2CBDB02A3)
  {
    v136 = 0;
  }

  else
  {
    v136 = objc_opt_new();
    v141 = *(v23 + 16);
    if ((v141 & 0x20000) != 0)
    {
      v137.n128_f64[0] = *(v23 + 180);
      v142 = objc_msgSend_tsu_numberWithCGFloat_(MEMORY[0x277CCABB0], v131, v137, v138, v139, v140, v132, v133, v134, v135);
      objc_msgSend_setObject_forKeyedSubscript_(v136, v143, v146, v147, v148, v149, v142, @"obsolete_paper_width", v144, v145);

      v141 = *(v23 + 16);
    }

    if ((v141 & 0x40000) != 0)
    {
      v137.n128_f64[0] = *(v23 + 184);
      v150 = objc_msgSend_tsu_numberWithCGFloat_(MEMORY[0x277CCABB0], v131, v137, v138, v139, v140, v132, v133, v134, v135);
      objc_msgSend_setObject_forKeyedSubscript_(v136, v151, v154, v155, v156, v157, v150, @"obsolete_paper_height", v152, v153);

      v141 = *(v23 + 16);
    }

    if ((v141 & 0x80) != 0)
    {
      v137.n128_f64[0] = *(v23 + 152);
      v158 = objc_msgSend_tsu_numberWithCGFloat_(MEMORY[0x277CCABB0], v131, v137, v138, v139, v140, v132, v133, v134, v135);
      objc_msgSend_setObject_forKeyedSubscript_(v136, v159, v162, v163, v164, v165, v158, @"obsolete_left_margin", v160, v161);

      v141 = *(v23 + 16);
    }

    if ((v141 & 0x100) != 0)
    {
      v137.n128_f64[0] = *(v23 + 156);
      v166 = objc_msgSend_tsu_numberWithCGFloat_(MEMORY[0x277CCABB0], v131, v137, v138, v139, v140, v132, v133, v134, v135);
      objc_msgSend_setObject_forKeyedSubscript_(v136, v167, v170, v171, v172, v173, v166, @"obsolete_right_margin", v168, v169);

      v141 = *(v23 + 16);
    }

    if ((v141 & 0x200) != 0)
    {
      v137.n128_f64[0] = *(v23 + 160);
      v174 = objc_msgSend_tsu_numberWithCGFloat_(MEMORY[0x277CCABB0], v131, v137, v138, v139, v140, v132, v133, v134, v135);
      objc_msgSend_setObject_forKeyedSubscript_(v136, v175, v178, v179, v180, v181, v174, @"obsolete_top_margin", v176, v177);

      v141 = *(v23 + 16);
    }

    if ((v141 & 0x400) != 0)
    {
      v137.n128_f64[0] = *(v23 + 164);
      v182 = objc_msgSend_tsu_numberWithCGFloat_(MEMORY[0x277CCABB0], v131, v137, v138, v139, v140, v132, v133, v134, v135);
      objc_msgSend_setObject_forKeyedSubscript_(v136, v183, v186, v187, v188, v189, v182, @"obsolete_bottom_margin", v184, v185);

      v141 = *(v23 + 16);
    }

    if ((v141 & 0x80000) != 0)
    {
      v137.n128_f64[0] = *(v23 + 188);
      v190 = objc_msgSend_tsu_numberWithCGFloat_(MEMORY[0x277CCABB0], v131, v137, v138, v139, v140, v132, v133, v134, v135);
      objc_msgSend_setObject_forKeyedSubscript_(v136, v191, v194, v195, v196, v197, v190, @"obsolete_header_margin", v192, v193);

      v141 = *(v23 + 16);
    }

    if ((v141 & 0x100000) != 0)
    {
      v137.n128_f64[0] = *(v23 + 192);
      v198 = objc_msgSend_tsu_numberWithCGFloat_(MEMORY[0x277CCABB0], v131, v137, v138, v139, v140, v132, v133, v134, v135);
      objc_msgSend_setObject_forKeyedSubscript_(v136, v199, v202, v203, v204, v205, v198, @"obsolete_footer_margin", v200, v201);

      v141 = *(v23 + 16);
    }

    if ((v141 & 0x800) != 0)
    {
      v206 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v131, v137, v138, v139, v140, *(v23 + 168), v133, v134, v135);
      objc_msgSend_setObject_forKeyedSubscript_(v136, v207, v210, v211, v212, v213, v206, @"obsolete_shows_header", v208, v209);

      v141 = *(v23 + 16);
    }

    if ((v141 & 0x1000) != 0)
    {
      v214 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v131, v137, v138, v139, v140, *(v23 + 169), v133, v134, v135);
      objc_msgSend_setObject_forKeyedSubscript_(v136, v215, v218, v219, v220, v221, v214, @"obsolete_shows_footer", v216, v217);

      v141 = *(v23 + 16);
    }

    if ((v141 & 0x8000) != 0)
    {
      v137.n128_f64[0] = *(v23 + 172);
      v222 = objc_msgSend_tsu_numberWithCGFloat_(MEMORY[0x277CCABB0], v131, v137, v138, v139, v140, v132, v133, v134, v135);
      objc_msgSend_setObject_forKeyedSubscript_(v136, v223, v226, v227, v228, v229, v222, @"obsolete_header_padding", v224, v225);

      v141 = *(v23 + 16);
    }

    if ((v141 & 0x10000) != 0)
    {
      v137.n128_f64[0] = *(v23 + 176);
      v230 = objc_msgSend_tsu_numberWithCGFloat_(MEMORY[0x277CCABB0], v131, v137, v138, v139, v140, v132, v133, v134, v135);
      objc_msgSend_setObject_forKeyedSubscript_(v136, v231, v234, v235, v236, v237, v230, @"obsolete_footer_padding", v232, v233);
    }
  }

  v247[0] = MEMORY[0x277D85DD0];
  v247[1] = 3221225472;
  v247[2] = sub_275FCE468;
  v247[3] = &unk_27A6A84B8;
  v249 = v59;
  v247[4] = self;
  v238 = v136;
  v248 = v238;
  objc_msgSend_addFinalizeHandler_(v14, v239, v243, v244, v245, v246, v247, v240, v241, v242);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v11 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, v7, v8, v9, v10, sub_275FD1EDC, off_2812F85B8[26], v5, v6);

  *(v11 + 171) = self->_inheritPreviousHeaderFooter;
  *(v11 + 204) = self->_sectionTemplateFirstPageDifferent;
  *(v11 + 206) = self->_sectionTemplateFirstPageHidesHeaderFooter;
  sectionTemplateEvenOddPagesDifferent = self->_sectionTemplateEvenOddPagesDifferent;
  v22 = *(v11 + 16);
  *(v11 + 16) = v22 | 0x3804000;
  *(v11 + 205) = sectionTemplateEvenOddPagesDifferent;
  sectionStartKind = self->_sectionStartKind;
  *(v11 + 16) = v22 | 0x3A04000;
  *(v11 + 196) = sectionStartKind;
  sectionPageNumberKind = self->_sectionPageNumberKind;
  *(v11 + 16) = v22 | 0x3E04000;
  *(v11 + 200) = sectionPageNumberKind;
  sectionPageNumberStart = self->_sectionPageNumberStart;
  *(v11 + 16) = v22 | 0x7E04000;
  *(v11 + 208) = sectionPageNumberStart;
  v26 = self->_sectionTemplatePages[0];
  if (v26)
  {
    *(v11 + 16) = v22 | 0x7E04002;
    v27 = *(v11 + 104);
    if (!v27)
    {
      v28 = *(v11 + 8);
      if (v28)
      {
        v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
      }

      v27 = MEMORY[0x277C92D60](v28);
      *(v11 + 104) = v27;
    }

    objc_msgSend_setStrongReference_message_(archiverCopy, v12, v17, v18, v19, v20, v26, v27, v15, v16);
  }

  v29 = self->_sectionTemplatePages[1];
  if (v29)
  {
    *(v11 + 16) |= 4u;
    v30 = *(v11 + 112);
    if (!v30)
    {
      v31 = *(v11 + 8);
      if (v31)
      {
        v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
      }

      v30 = MEMORY[0x277C92D60](v31);
      *(v11 + 112) = v30;
    }

    objc_msgSend_setStrongReference_message_(archiverCopy, v12, v17, v18, v19, v20, v29, v30, v15, v16);
  }

  v32 = self->_sectionTemplatePages[2];
  if (v32)
  {
    *(v11 + 16) |= 8u;
    v33 = *(v11 + 120);
    if (!v33)
    {
      v34 = *(v11 + 8);
      if (v34)
      {
        v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
      }

      v33 = MEMORY[0x277C92D60](v34);
      *(v11 + 120) = v33;
    }

    objc_msgSend_setStrongReference_message_(archiverCopy, v12, v17, v18, v19, v20, v32, v33, v15, v16);
  }

  if (self->_backgroundFill)
  {
    objc_msgSend_setIgnoreAndPreserveRuleForField_message_(archiverCopy, v12, v17, v18, v19, v20, 30, v11, v15, v16);
    backgroundFill = self->_backgroundFill;
    *(v11 + 16) |= 0x20u;
    v43 = *(v11 + 136);
    if (!v43)
    {
      v44 = *(v11 + 8);
      if (v44)
      {
        v44 = *(v44 & 0xFFFFFFFFFFFFFFFELL);
      }

      v43 = MEMORY[0x277C92CE0](v44);
      *(v11 + 136) = v43;
    }

    objc_msgSend_saveToArchive_archiver_(backgroundFill, v35, v38, v39, v40, v41, v43, archiverCopy, v36, v37);
    v54 = objc_msgSend_documentRoot(self, v45, v50, v51, v52, v53, v46, v47, v48, v49);
    v64 = objc_msgSend_settings(v54, v55, v60, v61, v62, v63, v56, v57, v58, v59);
    hasBody = objc_msgSend_hasBody(v64, v65, v70, v71, v72, v73, v66, v67, v68, v69);

    v81 = MEMORY[0x277D80998];
    if (hasBody)
    {
      v81 = MEMORY[0x277D808C8];
    }

    objc_msgSend_requiresDocumentReadVersion_writeVersion_featureIdentifier_(archiverCopy, v75, v77, v78, v79, v80, *MEMORY[0x277D808C0], *v81, @"TPPageBackgrounds", v76);
  }

  sectionHyperlinkUUID = self->_sectionHyperlinkUUID;
  if (sectionHyperlinkUUID)
  {
    *(v11 + 16) |= 0x40u;
    v83 = *(v11 + 144);
    if (!v83)
    {
      v84 = *(v11 + 8);
      if (v84)
      {
        v84 = *(v84 & 0xFFFFFFFFFFFFFFFELL);
      }

      v83 = MEMORY[0x277C92D20](v84);
      *(v11 + 144) = v83;
    }

    objc_msgSend_tsp_saveToMessage_(sectionHyperlinkUUID, v12, v17, v18, v19, v20, v83, v14, v15, v16);
    objc_msgSend_setIgnoreAndPreserveRuleForField_message_(archiverCopy, v85, v88, v89, v90, v91, 31, v11, v86, v87);
  }

  v92 = objc_msgSend_UTF8String(self->_name, v12, v17, v18, v19, v20, v13, v14, v15, v16);
  sub_275FCE858(v11, v92);
}

- (BOOL)isHeaderFooterVisible:(int64_t)visible
{
  if (visible)
  {
    return 1;
  }

  v10 = 0;
  sectionTemplatePages = self->_sectionTemplatePages;
  while (1)
  {
    v12 = sectionTemplatePages[v10];
    if (v12)
    {
      v13 = v12;
      isHeaderFooterEmpty = objc_msgSend_isHeaderFooterEmpty_(v13, v14, v18, v19, v20, v21, 0, v15, v16, v17);
      goto LABEL_7;
    }

    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v6, v7, v8, v9, "[TPSection isHeaderFooterVisible:]", v3, v4, v5);
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v29, v30, v31, v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSection.mm", v26, v27, v28);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v34, v35, v36, v37, v38, v24, v33, 401, 0, "invalid nil value for '%{public}s'", "_sectionTemplatePages[type]");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v44, v45, v46, v47, v40, v41, v42, v43);
    v13 = sectionTemplatePages[v10];
    if (v13)
    {
      break;
    }

LABEL_8:

    if (++v10 == 3)
    {
      return 1;
    }
  }

  isHeaderFooterEmpty = objc_msgSend_isHeaderFooterEmpty_(v13, v48, v52, v53, v54, v55, 0, v49, v50, v51);
LABEL_7:
  if (isHeaderFooterEmpty)
  {
    goto LABEL_8;
  }

  return 0;
}

- (BOOL)isHeaderFooterEmpty:(int64_t)empty
{
  v11 = 0;
  v12 = 0;
  sectionTemplatePages = self->_sectionTemplatePages;
  while (1)
  {
    v14 = sectionTemplatePages[v11];
    if (v14)
    {
      v15 = v14;
      isHeaderFooterEmpty = objc_msgSend_isHeaderFooterEmpty_(v15, v16, v20, v21, v22, v23, empty, v17, v18, v19);
      goto LABEL_6;
    }

    v25 = MEMORY[0x277D81150];
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v6, v7, v8, v9, "[TPSection isHeaderFooterEmpty:]", v3, v4, v5);
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, v31, v32, v33, v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSection.mm", v28, v29, v30);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v36, v37, v38, v39, v40, v26, v35, 417, 0, "invalid nil value for '%{public}s'", "_sectionTemplatePages[type]");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v41, v46, v47, v48, v49, v42, v43, v44, v45);
    v15 = sectionTemplatePages[v11];
    if (v15)
    {
      break;
    }

LABEL_7:

    v12 = v11++ > 1;
    if (v11 == 3)
    {
      return 1;
    }
  }

  isHeaderFooterEmpty = objc_msgSend_isHeaderFooterEmpty_(v15, v50, v54, v55, v56, v57, empty, v51, v52, v53);
LABEL_6:
  if (isHeaderFooterEmpty)
  {
    goto LABEL_7;
  }

  return v12;
}

- (void)setSectionHyperlinkUUID:(id)d
{
  dCopy = d;
  v16.receiver = self;
  v16.super_class = TPSection;
  [(TPSection *)&v16 willModify];
  v14 = objc_msgSend_copy(dCopy, v5, v10, v11, v12, v13, v6, v7, v8, v9);
  sectionHyperlinkUUID = self->_sectionHyperlinkUUID;
  self->_sectionHyperlinkUUID = v14;
}

- (NSString)localizedPrettyDisplayStringShort
{
  v11 = objc_msgSend_documentRoot(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v21 = objc_msgSend_settings(v11, v12, v17, v18, v19, v20, v13, v14, v15, v16);
  hasBody = objc_msgSend_hasBody(v21, v22, v27, v28, v29, v30, v23, v24, v25, v26);

  if (hasBody)
  {
    v41 = objc_msgSend_name(self, v32, v37, v38, v39, v40, v33, v34, v35, v36);
    if (objc_msgSend_length(v41, v42, v47, v48, v49, v50, v43, v44, v45, v46) && !objc_msgSend_isEqualToString_(@"Section", v51, v55, v56, v57, v58, v41, v52, v53, v54))
    {
      if (v41)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  v59 = objc_msgSend_bodyStorage(v11, v32, v37, v38, v39, v40, v33, v34, v35, v36);
  v68 = objc_msgSend_sectionIndexForSection_(v59, v60, v64, v65, v66, v67, self, v61, v62, v63);

  if (v68 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v77 = MEMORY[0x277D81150];
    v78 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v69, v73, v74, v75, v76, "[TPSection localizedPrettyDisplayStringShort]", v70, v71, v72);
    v87 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v79, v83, v84, v85, v86, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSection.mm", v80, v81, v82);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v77, v88, v89, v90, v91, v92, v78, v87, 460, 0, "Could not find the section index of the current section from inside the body storage, falling back on section array");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v93, v98, v99, v100, v101, v94, v95, v96, v97);
    v111 = objc_msgSend_sections(v11, v102, v107, v108, v109, v110, v103, v104, v105, v106);
    v68 = objc_msgSend_indexOfObject_(v111, v112, v116, v117, v118, v119, self, v113, v114, v115);

    if (v68 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v120 = MEMORY[0x277D81150];
      v68 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v69, v73, v74, v75, v76, "[TPSection localizedPrettyDisplayStringShort]", v70, v71, v72);
      v129 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v121, v125, v126, v127, v128, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSection.mm", v122, v123, v124);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v120, v130, v131, v132, v133, v134, v68, v129, 463, 0, "Could not find the section index at all.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v135, v140, v141, v142, v143, v136, v137, v138, v139);
      LODWORD(v68) = -1;
    }
  }

  v41 = objc_msgSend_localizedStringWithFormat_(MEMORY[0x277CCACA8], v69, v73, v74, v75, v76, @"%d", v70, v71, v72, (v68 + 1));
LABEL_9:

  return v41;
}

- (NSString)localizedPrettyDisplayStringLong
{
  v11 = objc_msgSend_name(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v21 = objc_msgSend_documentRoot(self, v12, v17, v18, v19, v20, v13, v14, v15, v16);
  v31 = objc_msgSend_settings(v21, v22, v27, v28, v29, v30, v23, v24, v25, v26);
  hasBody = objc_msgSend_hasBody(v31, v32, v37, v38, v39, v40, v33, v34, v35, v36);

  if (objc_msgSend_length(v11, v42, v47, v48, v49, v50, v43, v44, v45, v46))
  {
    isEqualToString = objc_msgSend_isEqualToString_(@"Section", v51, v56, v57, v58, v59, v11, v53, v54, v55);
  }

  else
  {
    isEqualToString = 1;
  }

  if ((hasBody & isEqualToString) == 1)
  {
    v61 = objc_msgSend_bodyStorage(v21, v51, v56, v57, v58, v59, v52, v53, v54, v55);
    v70 = objc_msgSend_sectionIndexForSection_(v61, v62, v66, v67, v68, v69, self, v63, v64, v65);

    v71 = MEMORY[0x277CCACA8];
    v73 = sub_275FFFC3C(v72);
    v80 = objc_msgSend_localizedStringForKey_value_table_(v73, v74, v76, v77, v78, v79, @"Section %ld", &stru_288501738, @"Pages", v75);
    v89 = objc_msgSend_localizedStringWithFormat_(v71, v81, v85, v86, v87, v88, v80, v82, v83, v84, v70 + 1);
  }

  else
  {
    if (hasBody)
    {
      goto LABEL_9;
    }

    v90 = objc_msgSend_bodyStorage(v21, v51, v56, v57, v58, v59, v52, v53, v54, v55);
    v99 = objc_msgSend_sectionIndexForSection_(v90, v91, v95, v96, v97, v98, self, v92, v93, v94);

    v100 = MEMORY[0x277CCACA8];
    v73 = sub_275FFFC3C(v101);
    v80 = objc_msgSend_localizedStringForKey_value_table_(v73, v102, v104, v105, v106, v107, @"Page %ld", &stru_288501738, @"Pages", v103);
    v89 = objc_msgSend_localizedStringWithFormat_(v100, v108, v112, v113, v114, v115, v80, v109, v110, v111, v99 + 1);
  }

  v116 = v89;

  v11 = v116;
LABEL_9:

  return v11;
}

- (NSURL)url
{
  v11 = objc_msgSend_sectionHyperlinkUUID(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v21 = objc_msgSend_UUIDString(v11, v12, v17, v18, v19, v20, v13, v14, v15, v16);

  if (!v21 || !objc_msgSend_length(v21, v22, v27, v28, v29, v30, v23, v24, v25, v26))
  {
    v31 = objc_msgSend_objectUUID(self, v22, v27, v28, v29, v30, v23, v24, v25, v26);
    v41 = objc_msgSend_UUIDString(v31, v32, v37, v38, v39, v40, v33, v34, v35, v36);

    v21 = v41;
  }

  if (!objc_msgSend_length(v21, v22, v27, v28, v29, v30, v23, v24, v25, v26))
  {
    v51 = MEMORY[0x277D81150];
    v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, v47, v48, v49, v50, "[TPSection url]", v44, v45, v46);
    v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v53, v57, v58, v59, v60, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSection.mm", v54, v55, v56);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v51, v62, v63, v64, v65, v66, v52, v61, 503, 0, "Expecting to have a section hyperlink UUID");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v67, v72, v73, v74, v75, v68, v69, v70, v71);
  }

  if (objc_msgSend_length(v21, v42, v47, v48, v49, v50, v43, v44, v45, v46))
  {
    v84 = objc_msgSend_stringByAppendingString_(*MEMORY[0x277D80FF0], v76, v80, v81, v82, v83, v21, v77, v78, v79);
    v93 = objc_msgSend_URLWithString_(MEMORY[0x277CBEBC0], v85, v89, v90, v91, v92, v84, v86, v87, v88);
  }

  else
  {
    v93 = 0;
  }

  return v93;
}

- (id)copyWithContext:(id)context
{
  contextCopy = context;
  v5 = objc_alloc(objc_opt_class());
  v13 = objc_msgSend_initWithContext_section_(v5, v6, v9, v10, v11, v12, contextCopy, self, v7, v8);

  return v13;
}

- (void)setSectionTemplatePageForFirstPage:(id)page
{
  pageCopy = page;
  objc_msgSend_willModify(self, v5, v10, v11, v12, v13, v6, v7, v8, v9);
  v14 = self->_sectionTemplatePages[0];
  self->_sectionTemplatePages[0] = pageCopy;
}

- (TSWPStorage)parentStorage
{
  WeakRetained = objc_loadWeakRetained(&self->_parentStorage);

  return WeakRetained;
}

- (void)setParentStorage:(id)storage
{
  storageCopy = storage;
  objc_storeWeak(&self->_parentStorage, storageCopy);
  v12 = 0;
  sectionTemplatePages = self->_sectionTemplatePages;
  do
  {
    v14 = sectionTemplatePages[v12];
    if (!v14)
    {
      v15 = MEMORY[0x277D81150];
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v8, v9, v10, v11, "[TPSection setParentStorage:]", v5, v6, v7);
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSection.mm", v18, v19, v20);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v26, v27, v28, v29, v30, v16, v25, 654, 0, "invalid nil value for '%{public}s'", "_sectionTemplatePages[type]");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v36, v37, v38, v39, v32, v33, v34, v35);
      v14 = sectionTemplatePages[v12];
    }

    objc_msgSend_setParentStorage_(v14, v4, v8, v9, v10, v11, storageCopy, v5, v6, v7);
    ++v12;
  }

  while (v12 != 3);
}

- (void)adoptStylesheet:(id)stylesheet withMapper:(id)mapper
{
  stylesheetCopy = stylesheet;
  mapperCopy = mapper;
  v15 = 0;
  sectionTemplatePages = self->_sectionTemplatePages;
  do
  {
    v17 = sectionTemplatePages[v15];
    if (!v17)
    {
      v18 = MEMORY[0x277D81150];
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v11, v12, v13, v14, "[TPSection adoptStylesheet:withMapper:]", v7, v8, v9);
      v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, v24, v25, v26, v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSection.mm", v21, v22, v23);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v29, v30, v31, v32, v33, v19, v28, 662, 0, "invalid nil value for '%{public}s'", "_sectionTemplatePages[type]");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v39, v40, v41, v42, v35, v36, v37, v38);
      v17 = sectionTemplatePages[v15];
    }

    objc_msgSend_adoptStylesheet_withMapper_(v17, v6, v11, v12, v13, v14, stylesheetCopy, mapperCopy, v8, v9);
    ++v15;
  }

  while (v15 != 3);
}

- (void)willBeAddedToDocumentRoot:(id)root dolcContext:(id)context
{
  rootCopy = root;
  contextCopy = context;
  v15 = 0;
  sectionTemplatePages = self->_sectionTemplatePages;
  do
  {
    v17 = sectionTemplatePages[v15];
    if (!v17)
    {
      v18 = MEMORY[0x277D81150];
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v11, v12, v13, v14, "[TPSection willBeAddedToDocumentRoot:dolcContext:]", v7, v8, v9);
      v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, v24, v25, v26, v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSection.mm", v21, v22, v23);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v29, v30, v31, v32, v33, v19, v28, 672, 0, "invalid nil value for '%{public}s'", "_sectionTemplatePages[type]");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v39, v40, v41, v42, v35, v36, v37, v38);
      v17 = sectionTemplatePages[v15];
    }

    objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(v17, v6, v11, v12, v13, v14, rootCopy, contextCopy, v8, v9);
    ++v15;
  }

  while (v15 != 3);
}

- (void)wasAddedToDocumentRoot:(id)root dolcContext:(id)context
{
  rootCopy = root;
  contextCopy = context;
  v16 = objc_msgSend_context(rootCopy, v7, v12, v13, v14, v15, v8, v9, v10, v11);
  objc_msgSend_wasAddedToDocumentWithContext_(self, v17, v21, v22, v23, v24, v16, v18, v19, v20);

  v33 = 0;
  sectionTemplatePages = self->_sectionTemplatePages;
  do
  {
    v35 = sectionTemplatePages[v33];
    if (!v35)
    {
      v36 = MEMORY[0x277D81150];
      v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v29, v30, v31, v32, "[TPSection wasAddedToDocumentRoot:dolcContext:]", v26, v27, v28);
      v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, v42, v43, v44, v45, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSection.mm", v39, v40, v41);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v47, v48, v49, v50, v51, v37, v46, 682, 0, "invalid nil value for '%{public}s'", "_sectionTemplatePages[type]");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v52, v57, v58, v59, v60, v53, v54, v55, v56);
      v35 = sectionTemplatePages[v33];
    }

    objc_msgSend_wasAddedToDocumentRoot_dolcContext_(v35, v25, v29, v30, v31, v32, rootCopy, contextCopy, v27, v28);
    ++v33;
  }

  while (v33 != 3);
}

- (void)willBeRemovedFromDocumentRoot:(id)root
{
  rootCopy = root;
  v11 = 0;
  sectionTemplatePages = self->_sectionTemplatePages;
  do
  {
    v13 = sectionTemplatePages[v11];
    if (!v13)
    {
      v14 = MEMORY[0x277D81150];
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, v7, v8, v9, v10, "[TPSection willBeRemovedFromDocumentRoot:]", v4, v5, v6);
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v20, v21, v22, v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSection.mm", v17, v18, v19);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v25, v26, v27, v28, v29, v15, v24, 694, 0, "invalid nil value for '%{public}s'", "_sectionTemplatePages[type]");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v35, v36, v37, v38, v31, v32, v33, v34);
      v13 = sectionTemplatePages[v11];
    }

    objc_msgSend_willBeRemovedFromDocumentRoot_(v13, v3, v7, v8, v9, v10, rootCopy, v4, v5, v6);
    ++v11;
  }

  while (v11 != 3);
  v40 = objc_msgSend_context(rootCopy, v3, v7, v8, v9, v10, v39, v4, v5, v6);
  objc_msgSend_willBeRemovedFromDocumentWithContext_(self, v41, v45, v46, v47, v48, v40, v42, v43, v44);
}

- (void)wasRemovedFromDocumentRoot:(id)root
{
  rootCopy = root;
  v12 = 0;
  sectionTemplatePages = self->_sectionTemplatePages;
  do
  {
    v14 = sectionTemplatePages[v12];
    if (!v14)
    {
      v15 = MEMORY[0x277D81150];
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v8, v9, v10, v11, "[TPSection wasRemovedFromDocumentRoot:]", v5, v6, v7);
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSection.mm", v18, v19, v20);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v26, v27, v28, v29, v30, v16, v25, 704, 0, "invalid nil value for '%{public}s'", "_sectionTemplatePages[type]");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v36, v37, v38, v39, v32, v33, v34, v35);
      v14 = sectionTemplatePages[v12];
    }

    objc_msgSend_wasRemovedFromDocumentRoot_(v14, v4, v8, v9, v10, v11, rootCopy, v5, v6, v7);
    ++v12;
  }

  while (v12 != 3);
}

- (id)childEnumerator
{
  v53 = *MEMORY[0x277D85DE8];
  v10 = objc_msgSend_aggregateEnumeratorWithObjects_(MEMORY[0x277D81148], a2, v5, v6, v7, v8, 0, v2, v3, v4);
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v19 = objc_msgSend_sectionTemplatePages(self, v11, 0, v16, v17, v18, v12, v13, v14, v15, 0);
  v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, v22, v23, v24, v25, &v48, v52, 16, v21);
  if (v31)
  {
    v36 = *v49;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v49 != v36)
        {
          objc_enumerationMutation(v19);
        }

        v42 = objc_msgSend_childEnumerator(*(*(&v48 + 1) + 8 * i), v26, v32, v33, v34, v35, v27, v28, v29, v30);
        if (v42)
        {
          objc_msgSend_addObject_(v10, v38, v43, v44, v45, v46, v42, v39, v40, v41);
        }
      }

      v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v26, v32, v33, v34, v35, &v48, v52, 16, v30);
    }

    while (v31);
  }

  return v10;
}

- (void)acceptVisitor:(id)visitor
{
  v12 = TSUProtocolCast();
  if (v12)
  {
    objc_msgSend_visitTPSection_(v12, v4, v8, v9, v10, v11, self, v5, v6, v7, &unk_288546520);
  }
}

- (CGSize)targetSizeForImageData:(id)data associatedHint:(id)hint
{
  objc_opt_class();
  v5 = TSUDynamicCast();
  v15 = objc_msgSend_documentRoot(self, v6, v11, v12, v13, v14, v7, v8, v9, v10);
  objc_msgSend_pageSize(v15, v16, v21, v22, v23, v24, v17, v18, v19, v20);
  objc_msgSend_renderedImageSizeForObjectSize_(v5, v25, v30, v31, v32, v33, v26, v27, v28, v29);
  v35 = v34;
  v37 = v36;

  v38 = v35;
  v39 = v37;
  result.height = v39;
  result.width = v38;
  return result;
}

- (void)i_ensureHeaderFooterStoragesExistWithStylesheet:(id)stylesheet
{
  stylesheetCopy = stylesheet;
  v14 = 0;
  sectionTemplatePages = self->_sectionTemplatePages;
  v24 = stylesheetCopy;
  do
  {
    v16 = sectionTemplatePages[v14];
    v17 = objc_msgSend_headerAndFooterStyle(stylesheetCopy, v5, v10, v11, v12, v13, v6, v7, v8, v9);
    objc_msgSend_i_ensureHeaderFooterStoragesExistWithStylesheet_paragraphStyle_context_(v16, v18, v20, v21, v22, v23, v24, v17, 0, v19);

    ++v14;
    stylesheetCopy = v24;
  }

  while (v14 != 3);
}

- (void)i_copyHeadersAndFootersFrom:(id)from dolcContext:(id)context withBlock:(id)block
{
  fromCopy = from;
  contextCopy = context;
  blockCopy = block;
  for (i = 0; i != 3; ++i)
  {
    v19 = objc_msgSend_sectionTemplatePageForType_(self, v9, v14, v15, v16, v17, i, v10, v11, v12);
    v28 = objc_msgSend_sectionTemplatePageForType_(fromCopy, v20, v24, v25, v26, v27, i, v21, v22, v23);
    objc_msgSend_i_copyHeadersAndFootersFrom_dolcContext_withBlock_(v19, v29, v31, v32, v33, v34, v28, contextCopy, blockCopy, v30);
  }
}

- (void)setBackgroundFill:(id)fill
{
  fillCopy = fill;
  if (self->_backgroundFill != fillCopy)
  {
    objc_msgSend_willModify(self, v4, v9, v10, v11, v12, v5, v6, v7, v8);
    objc_opt_class();
    v13 = TSUDynamicCast();
    v23 = v13;
    if (v13)
    {
      v24 = objc_msgSend_imageData(v13, v14, v19, v20, v21, v22, v15, v16, v17, v18);
      objc_msgSend_willRemoveReferenceToData_(self, v25, v29, v30, v31, v32, v24, v26, v27, v28);
    }

    v33 = objc_msgSend_null(MEMORY[0x277CBEB68], v14, v19, v20, v21, v22, v15, v16, v17, v18);

    if (v33 == fillCopy)
    {
      v34 = 0;
    }

    else
    {
      v34 = fillCopy;
    }

    backgroundFill = self->_backgroundFill;
    self->_backgroundFill = v34;

    objc_opt_class();
    v36 = TSUDynamicCast();
    v46 = v36;
    if (v36)
    {
      v47 = objc_msgSend_imageData(v36, v37, v42, v43, v44, v45, v38, v39, v40, v41);
      objc_msgSend_didAddReferenceToData_(self, v48, v52, v53, v54, v55, v47, v49, v50, v51);
    }
  }
}

- (void)i_clearPropertiesToDefaults
{
  objc_msgSend_setInheritPreviousHeaderFooter_(self, a2, v5, v6, v7, v8, 1, v2, v3, v4);
  objc_msgSend_setSectionTemplateFirstPageDifferent_(self, v10, v14, v15, v16, v17, 0, v11, v12, v13);
  objc_msgSend_setSectionTemplateFirstPageHidesHeaderFooter_(self, v18, v22, v23, v24, v25, 0, v19, v20, v21);
  objc_msgSend_setSectionTemplateEvenOddPagesDifferent_(self, v26, v30, v31, v32, v33, 0, v27, v28, v29);
  objc_msgSend_setSectionStartKind_(self, v34, v38, v39, v40, v41, 0, v35, v36, v37);
  objc_msgSend_setSectionPageNumberKind_(self, v42, v46, v47, v48, v49, 0, v43, v44, v45);
  objc_msgSend_setSectionPageNumberStart_(self, v50, v54, v55, v56, v57, 1, v51, v52, v53);
  objc_msgSend_setName_(self, v58, v62, v63, v64, v65, @"Section", v59, v60, v61);

  objc_msgSend_setBackgroundFill_(self, v66, v70, v71, v72, v73, 0, v67, v68, v69);
}

- (void)p_unarchiveAndUpgrade:(id)upgrade archive:(const void *)archive
{
  upgradeCopy = upgrade;
  objc_msgSend_willModifyForUpgrade(self, v7, v12, v13, v14, v15, v8, v9, v10, v11);
  objc_msgSend_i_clearPropertiesToDefaults(self, v16, v21, v22, v23, v24, v17, v18, v19, v20);
  v25 = [TPSectionTemplatePage alloc];
  v34 = objc_msgSend_initWithSection_(v25, v26, v30, v31, v32, v33, self, v27, v28, v29);
  sectionTemplatePages = self->_sectionTemplatePages;
  v36 = self->_sectionTemplatePages[0];
  self->_sectionTemplatePages[0] = v34;

  v37 = [TPSectionTemplatePage alloc];
  v46 = objc_msgSend_initWithSection_(v37, v38, v42, v43, v44, v45, self, v39, v40, v41);
  v47 = self->_sectionTemplatePages[1];
  self->_sectionTemplatePages[1] = v46;

  v48 = [TPSectionTemplatePage alloc];
  v57 = objc_msgSend_initWithSection_(v48, v49, v53, v54, v55, v56, self, v50, v51, v52);
  v58 = self->_sectionTemplatePages[2];
  self->_sectionTemplatePages[2] = v57;

  for (i = 0; i != 3; ++i)
  {
    v68 = sectionTemplatePages[i];
    if (v68)
    {
      v69 = v68;
    }

    else
    {
      v70 = MEMORY[0x277D81150];
      v71 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v59, v63, v64, v65, v66, "[TPSection p_unarchiveAndUpgrade:archive:]", v60, v61, v62);
      v80 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v72, v76, v77, v78, v79, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSection.mm", v73, v74, v75);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v70, v81, v82, v83, v84, v85, v71, v80, 905, 0, "invalid nil value for '%{public}s'", "_sectionTemplatePages[type]");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v86, v91, v92, v93, v94, v87, v88, v89, v90);
      v69 = sectionTemplatePages[i];
      if (!v69)
      {
        continue;
      }
    }

    if (i != 2)
    {
      goto LABEL_40;
    }

    if (*(archive + 8) != 3)
    {
      goto LABEL_17;
    }

    v152 = 0;
    v153 = 0;
    v95 = 8;
    v154 = 0;
    do
    {
      v96 = v154;
      if (!v154)
      {
        goto LABEL_13;
      }

      v97 = v153;
      v98 = *v154;
      if (v153 < *v154)
      {
        LODWORD(v153) = v153 + 1;
        v99 = *&v154[2 * v97 + 2];
        goto LABEL_15;
      }

      if (v98 == HIDWORD(v153))
      {
LABEL_13:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve(&v152);
        v96 = v154;
        v98 = *v154;
      }

      *v96 = v98 + 1;
      v99 = MEMORY[0x277C92D60](v152);
      v100 = &v154[2 * v153];
      LODWORD(v153) = v153 + 1;
      *(v100 + 1) = v99;
LABEL_15:
      TSP::Reference::CopyFrom(v99, *(*(archive + 5) + v95));
      v95 += 8;
    }

    while (v95 != 32);
    v150[0] = MEMORY[0x277D85DD0];
    v150[1] = 3221225472;
    v150[2] = sub_275FD08A4;
    v150[3] = &unk_27A6A8508;
    v151 = v69;
    v101 = upgradeCopy;
    v102 = objc_opt_class();
    objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v101, v103, v104, v105, v106, v107, &v152, v102, 0, v150);

    sub_275FB56E8(&v152);
LABEL_17:
    if (*(archive + 14) != 3)
    {
      goto LABEL_28;
    }

    v152 = 0;
    v153 = 0;
    v108 = 8;
    v154 = 0;
    while (2)
    {
      v109 = v154;
      if (!v154)
      {
        goto LABEL_24;
      }

      v110 = v153;
      v111 = *v154;
      if (v153 < *v154)
      {
        LODWORD(v153) = v153 + 1;
        v112 = *&v154[2 * v110 + 2];
        goto LABEL_26;
      }

      if (v111 == HIDWORD(v153))
      {
LABEL_24:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve(&v152);
        v109 = v154;
        v111 = *v154;
      }

      *v109 = v111 + 1;
      v112 = MEMORY[0x277C92D60](v152);
      v113 = &v154[2 * v153];
      LODWORD(v153) = v153 + 1;
      *(v113 + 1) = v112;
LABEL_26:
      TSP::Reference::CopyFrom(v112, *(*(archive + 8) + v108));
      v108 += 8;
      if (v108 != 32)
      {
        continue;
      }

      break;
    }

    v148[0] = MEMORY[0x277D85DD0];
    v148[1] = 3221225472;
    v148[2] = sub_275FD0958;
    v148[3] = &unk_27A6A8508;
    v149 = v69;
    v114 = upgradeCopy;
    v115 = objc_opt_class();
    objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v114, v116, v117, v118, v119, v120, &v152, v115, 0, v148);

    sub_275FB56E8(&v152);
LABEL_28:
    v121 = *(archive + 20);
    if (v121)
    {
      v152 = 0;
      v153 = 0;
      v154 = 0;
      if (v121 >= 1)
      {
        v122 = 8;
        while (1)
        {
          v123 = v154;
          if (!v154)
          {
            goto LABEL_36;
          }

          v124 = v153;
          v125 = *v154;
          if (v153 >= *v154)
          {
            break;
          }

          LODWORD(v153) = v153 + 1;
          v126 = *&v154[2 * v124 + 2];
LABEL_38:
          TSP::Reference::CopyFrom(v126, *(*(archive + 11) + v122));
          v122 += 8;
          if (!--v121)
          {
            goto LABEL_39;
          }
        }

        if (v125 == HIDWORD(v153))
        {
LABEL_36:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(&v152);
          v123 = v154;
          v125 = *v154;
        }

        *v123 = v125 + 1;
        v126 = MEMORY[0x277C92D60](v152);
        v127 = &v154[2 * v153];
        LODWORD(v153) = v153 + 1;
        *(v127 + 1) = v126;
        goto LABEL_38;
      }

LABEL_39:
      v146[0] = MEMORY[0x277D85DD0];
      v146[1] = 3221225472;
      v146[2] = sub_275FD0A0C;
      v146[3] = &unk_27A6A8508;
      v147 = v69;
      v128 = upgradeCopy;
      v129 = objc_opt_class();
      objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v128, v130, v131, v132, v133, v134, &v152, v129, 0, v146);

      sub_275FB56E8(&v152);
    }

LABEL_40:
    v144[0] = MEMORY[0x277D85DD0];
    v144[1] = 3221225472;
    v144[2] = sub_275FD0B28;
    v144[3] = &unk_27A6A8418;
    v144[4] = self;
    v135 = v69;
    v145 = v135;
    objc_msgSend_addFinalizeHandler_(upgradeCopy, v136, v140, v141, v142, v143, v144, v137, v138, v139);
  }
}

- (void)p_upgradePageSizeAndMarginsFromObsoleteSettings:(id)settings
{
  settingsCopy = settings;
  v12 = objc_msgSend_objectForKeyedSubscript_(settingsCopy, v4, v8, v9, v10, v11, @"obsolete_paper_width", v5, v6, v7);

  if (v12)
  {
    v21 = objc_msgSend_objectForKeyedSubscript_(settingsCopy, v13, v17, v18, v19, v20, @"obsolete_paper_width", v14, v15, v16);
    objc_msgSend_tsu_CGFloatValue(v21, v22, v27, v28, v29, v30, v23, v24, v25, v26);
    v32 = v31;
  }

  else
  {
    v32 = 0x4083200000000000;
  }

  v33 = objc_msgSend_objectForKeyedSubscript_(settingsCopy, v13, v17, v18, v19, v20, @"obsolete_paper_height", v14, v15, v16);

  if (v33)
  {
    v42 = objc_msgSend_objectForKeyedSubscript_(settingsCopy, v34, v38, v39, v40, v41, @"obsolete_paper_height", v35, v36, v37);
    objc_msgSend_tsu_CGFloatValue(v42, v43, v48, v49, v50, v51, v44, v45, v46, v47);
    v53 = v52;
  }

  else
  {
    v53 = 0x4088C00000000000;
  }

  v58 = objc_msgSend_objectForKeyedSubscript_(settingsCopy, v34, v38, v39, v40, v41, @"obsolete_left_margin", v35, v36, v37);
  if (v58)
  {
    v63 = objc_msgSend_objectForKeyedSubscript_(settingsCopy, v54, v59, v60, v61, v62, @"obsolete_left_margin", v55, v56, v57);
    objc_msgSend_tsu_CGFloatValue(v63, v64, v69, v70, v71, v72, v65, v66, v67, v68);
    v74 = v73;
  }

  else
  {
    v74 = 0x4052000000000000;
  }

  v87 = objc_msgSend_objectForKeyedSubscript_(settingsCopy, v75, v79, v80, v81, v82, @"obsolete_right_margin", v76, v77, v78);
  if (v87)
  {
    v92 = objc_msgSend_objectForKeyedSubscript_(settingsCopy, v83, v88, v89, v90, v91, @"obsolete_right_margin", v84, v85, v86);
    objc_msgSend_tsu_CGFloatValue(v92, v93, v98, v99, v100, v101, v94, v95, v96, v97);
    v103 = v102;
  }

  else
  {
    v103 = 0x4052000000000000;
  }

  v116 = objc_msgSend_objectForKeyedSubscript_(settingsCopy, v104, v108, v109, v110, v111, @"obsolete_top_margin", v105, v106, v107);
  if (v116)
  {
    v121 = objc_msgSend_objectForKeyedSubscript_(settingsCopy, v112, v117, v118, v119, v120, @"obsolete_top_margin", v113, v114, v115);
    objc_msgSend_tsu_CGFloatValue(v121, v122, v127, v128, v129, v130, v123, v124, v125, v126);
    v132 = v131;
  }

  else
  {
    v132 = 72.0;
  }

  v145 = objc_msgSend_objectForKeyedSubscript_(settingsCopy, v133, v137, v138, v139, v140, @"obsolete_bottom_margin", v134, v135, v136);
  if (v145)
  {
    v150 = objc_msgSend_objectForKeyedSubscript_(settingsCopy, v141, v146, v147, v148, v149, @"obsolete_bottom_margin", v142, v143, v144);
    objc_msgSend_tsu_CGFloatValue(v150, v151, v156, v157, v158, v159, v152, v153, v154, v155);
    v161 = v160;
  }

  else
  {
    v161 = 72.0;
  }

  v174 = objc_msgSend_objectForKeyedSubscript_(settingsCopy, v162, v166, v167, v168, v169, @"obsolete_header_margin", v163, v164, v165);
  if (v174)
  {
    v179 = objc_msgSend_objectForKeyedSubscript_(settingsCopy, v170, v175, v176, v177, v178, @"obsolete_header_margin", v171, v172, v173);
    objc_msgSend_tsu_CGFloatValue(v179, v180, v185, v186, v187, v188, v181, v182, v183, v184);
    v190 = v189;
  }

  else
  {
    v190 = 36.0;
  }

  v203 = objc_msgSend_objectForKeyedSubscript_(settingsCopy, v191, v195, v196, v197, v198, @"obsolete_footer_margin", v192, v193, v194);
  if (v203)
  {
    v208 = objc_msgSend_objectForKeyedSubscript_(settingsCopy, v199, v204, v205, v206, v207, @"obsolete_footer_margin", v200, v201, v202);
    objc_msgSend_tsu_CGFloatValue(v208, v209, v214, v215, v216, v217, v210, v211, v212, v213);
    v219 = v218;
  }

  else
  {
    v219 = 36.0;
  }

  v228 = objc_msgSend_objectForKeyedSubscript_(settingsCopy, v220, v224, v225, v226, v227, @"obsolete_header_margin", v221, v222, v223);
  if (v228)
  {

    goto LABEL_48;
  }

  v246 = objc_msgSend_objectForKeyedSubscript_(settingsCopy, v229, v233, v234, v235, v236, @"obsolete_footer_margin", v230, v231, v232);

  if (!v246)
  {
    if (!self->_sectionTemplatePages[2])
    {
      v247 = MEMORY[0x277D81150];
      v248 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v237, v242, v243, v244, v245, "[TPSection p_upgradePageSizeAndMarginsFromObsoleteSettings:]", v239, v240, v241);
      v257 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v249, v253, v254, v255, v256, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSection.mm", v250, v251, v252);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v247, v258, v259, v260, v261, v262, v248, v257, 1027, 0, "Need odd page master to calculate header/footer heights");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v263, v268, v269, v270, v271, v264, v265, v266, v267);
    }

    v276 = objc_msgSend_objectForKeyedSubscript_(settingsCopy, v237, v242, v243, v244, v245, @"obsolete_shows_header", v239, v240, v241);
    if (v276)
    {
      v281 = objc_msgSend_objectForKeyedSubscript_(settingsCopy, v272, v277, v278, v279, v280, @"obsolete_shows_header", v273, v274, v275);
      v291 = objc_msgSend_BOOLValue(v281, v282, v287, v288, v289, v290, v283, v284, v285, v286);
    }

    else
    {
      v291 = 0;
    }

    v304 = objc_msgSend_objectForKeyedSubscript_(settingsCopy, v292, v296, v297, v298, v299, @"obsolete_shows_footer", v293, v294, v295);
    if (v304)
    {
      v309 = objc_msgSend_objectForKeyedSubscript_(settingsCopy, v300, v305, v306, v307, v308, @"obsolete_shows_footer", v301, v302, v303);
      v319 = objc_msgSend_BOOLValue(v309, v310, v315, v316, v317, v318, v311, v312, v313, v314);
    }

    else
    {
      v319 = 0;
    }

    v392 = v32;
    if (v291)
    {
      v391 = v161;
      v324 = objc_msgSend_objectForKeyedSubscript_(settingsCopy, v237, v242, v243, v244, v245, @"obsolete_header_padding", v239, v240, v241);
      if (v324)
      {
        v329 = objc_msgSend_objectForKeyedSubscript_(settingsCopy, v320, v325, v326, v327, v328, @"obsolete_header_padding", v321, v322, v323);
        objc_msgSend_tsu_CGFloatValue(v329, v330, v335, v336, v337, v338, v331, v332, v333, v334);
        v340 = v339;
      }

      else
      {
        v340 = 9.0;
      }

      objc_msgSend_headerHeight(self->_sectionTemplatePages[2], v342, v347, v348, v349, v350, v343, v344, v345, v346);
      v242.n128_f64[0] = v132 + v242.n128_f64[0];
      v341 = v340 + v242.n128_f64[0];
      v190 = v132;
      v161 = v391;
      if (!v319)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v341 = v132;
      if (!v319)
      {
LABEL_47:
        v132 = v341;
        v32 = v392;
        goto LABEL_48;
      }
    }

    v355 = objc_msgSend_objectForKeyedSubscript_(settingsCopy, v237, v242, v243, v244, v245, @"obsolete_footer_padding", v239, v240, v241);
    if (v355)
    {
      v360 = objc_msgSend_objectForKeyedSubscript_(settingsCopy, v351, v356, v357, v358, v359, @"obsolete_footer_padding", v352, v353, v354);
      objc_msgSend_tsu_CGFloatValue(v360, v361, v366, v367, v368, v369, v362, v363, v364, v365);
      v371 = v370;
    }

    else
    {
      v371 = 9.0;
    }

    objc_msgSend_footerHeight(self->_sectionTemplatePages[2], v372, v377, v378, v379, v380, v373, v374, v375, v376);
    v242.n128_f64[0] = v161 + v242.n128_f64[0];
    v219 = v161;
    v161 = v371 + v242.n128_f64[0];
    goto LABEL_47;
  }

LABEL_48:
  v381 = objc_msgSend_documentRoot(self, v237, v242, v243, v244, v245, v238, v239, v240, v241);
  v382.n128_u64[0] = v32;
  v383.n128_u64[0] = v53;
  v384.n128_u64[0] = v74;
  v385.n128_u64[0] = v103;
  objc_msgSend_upgradeFromOldSectionWithPageSize_leftMargin_rightMargin_topMargin_bottomMargin_headerMargin_footerMargin_(v381, v386, v382, v383, v384, v385, v387, v388, v389, v390, v132, v161, v190, v219);
}

- (NSArray)sectionTemplatePages
{
  v15 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v20 = 0;
  sectionTemplatePages = self->_sectionTemplatePages;
  do
  {
    v22 = sectionTemplatePages[v20];
    if (v22)
    {
      v23 = v22;
      objc_msgSend_addObject_(v15, v24, v28, v29, v30, v31, v23, v25, v26, v27);
    }

    else
    {
      v32 = MEMORY[0x277D81150];
      v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v16, v17, v18, v19, "[TPSection sectionTemplatePages]", v12, v13, v14);
      v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, v38, v39, v40, v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSection.mm", v35, v36, v37);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v43, v44, v45, v46, v47, v33, v42, 1073, 0, "invalid nil value for '%{public}s'", "_sectionTemplatePages[type]");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v48, v53, v54, v55, v56, v49, v50, v51, v52);
      v23 = sectionTemplatePages[v20];
      if (v23)
      {
        objc_msgSend_addObject_(v15, v57, v61, v62, v63, v64, v23, v58, v59, v60);
      }
    }

    ++v20;
  }

  while (v20 != 3);

  return v15;
}

- (id)sectionTemplatePageOwningModel:(id)model
{
  modelCopy = model;
  v13 = 0;
  sectionTemplatePages = self->_sectionTemplatePages;
  while (1)
  {
    v15 = sectionTemplatePages[v13];
    if (!v15)
    {
      v16 = MEMORY[0x277D81150];
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v9, v10, v11, v12, "[TPSection sectionTemplatePageOwningModel:]", v5, v6, v7);
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSection.mm", v19, v20, v21);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v27, v28, v29, v30, v31, v17, v26, 1092, 0, "invalid nil value for '%{public}s'", "_sectionTemplatePages[type]");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v37, v38, v39, v40, v33, v34, v35, v36);
      v15 = sectionTemplatePages[v13];
    }

    if (objc_msgSend_containsModelObject_(v15, v4, v9, v10, v11, v12, modelCopy, v5, v6, v7))
    {
      break;
    }

    if (++v13 == 3)
    {
      v41 = 0;
      goto LABEL_8;
    }
  }

  v41 = sectionTemplatePages[v13];
LABEL_8:

  return v41;
}

- (id)sectionTemplatePageOwningInfo:(id)info
{
  infoCopy = info;
  v13 = 0;
  sectionTemplatePages = self->_sectionTemplatePages;
  while (1)
  {
    v15 = sectionTemplatePages[v13];
    if (!v15)
    {
      v16 = MEMORY[0x277D81150];
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v9, v10, v11, v12, "[TPSection sectionTemplatePageOwningInfo:]", v5, v6, v7);
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSection.mm", v19, v20, v21);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v27, v28, v29, v30, v31, v17, v26, 1107, 0, "invalid nil value for '%{public}s'", "_sectionTemplatePages[type]");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v37, v38, v39, v40, v33, v34, v35, v36);
      v15 = sectionTemplatePages[v13];
    }

    if (objc_msgSend_containsInfo_(v15, v4, v9, v10, v11, v12, infoCopy, v5, v6, v7))
    {
      break;
    }

    if (++v13 == 3)
    {
      v41 = 0;
      goto LABEL_8;
    }
  }

  v41 = sectionTemplatePages[v13];
LABEL_8:

  return v41;
}

- (void)p_addAllDrawablesFromInfo:(id)info toMutableArray:(id)array
{
  v42 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  arrayCopy = array;
  v36 = &unk_288510940;
  v8 = TSUProtocolCast();
  objc_opt_class();
  v14 = TSUDynamicCast();
  if (v14)
  {
    objc_msgSend_addObject_(arrayCopy, v9, v15, v16, v17, v18, v14, v11, v12, v13, &unk_288510940);
  }

  if (v8)
  {
    objc_msgSend_childInfos(v8, v9, v15, v16, v17, v18, v10, v11, v12, v13);
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v19 = v38 = 0u;
    v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, v22, v23, v24, v25, &v37, v41, 16, v21);
    if (v29)
    {
      v34 = *v38;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v38 != v34)
          {
            objc_enumerationMutation(v19);
          }

          objc_msgSend_p_addAllDrawablesFromInfo_toMutableArray_(self, v26, v30, v31, v32, v33, *(*(&v37 + 1) + 8 * i), arrayCopy, v27, v28, v36);
        }

        v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v26, v30, v31, v32, v33, &v37, v41, 16, v28);
      }

      while (v29);
    }
  }
}

- (id)allDrawables
{
  v142 = *MEMORY[0x277D85DE8];
  v15 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v20 = 0;
  sectionTemplatePages = self->_sectionTemplatePages;
  do
  {
    v21 = sectionTemplatePages[v20];
    if (v21)
    {
      v22 = v21;
      objc_msgSend_sectionTemplateDrawables(v22, v23, v28, v29, v30, v31, v24, v25, v26, v27);
    }

    else
    {
      v32 = MEMORY[0x277D81150];
      v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v16, v17, v18, v19, "[TPSection allDrawables]", v12, v13, v14);
      v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, v38, v39, v40, v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSection.mm", v35, v36, v37);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v43, v44, v45, v46, v47, v33, v42, 1191, 0, "invalid nil value for '%{public}s'", "_sectionTemplatePages[type]");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v48, v53, v54, v55, v56, v49, v50, v51, v52);
      v22 = sectionTemplatePages[v20];
      if (!v22)
      {
        goto LABEL_25;
      }

      objc_msgSend_sectionTemplateDrawables(v22, v11, v16, v17, v18, v19, v57, v12, v13, v14);
    }
    v136 = ;
    if (objc_msgSend_count(v136, v58, v63, v64, v65, v66, v59, v60, v61, v62))
    {
      v76 = objc_msgSend_array(MEMORY[0x277CBEB18], v67, v72, v73, v74, v75, v68, v69, v70, v71);
      objc_msgSend_addObjectsFromArray_(v76, v77, v81, v82, v83, v84, v136, v78, v79, v80);
    }

    else
    {
      v76 = 0;
    }

    v85 = 1;
    do
    {
      v86 = v85;
      v87 = 3;
      do
      {
        v88 = objc_msgSend_headerFooter_fragmentAtIndex_(v22, v67, v72, v73, v74, v75, 0, 0, v70, v71);
        v98 = objc_msgSend_childInfos(v88, v89, v94, v95, v96, v97, v90, v91, v92, v93);

        if (objc_msgSend_count(v98, v99, v104, v105, v106, v107, v100, v101, v102, v103))
        {
          if (!v76)
          {
            v76 = objc_msgSend_array(MEMORY[0x277CBEB18], v108, v113, v114, v115, v116, v109, v110, v111, v112);
          }

          objc_msgSend_addObjectsFromArray_(v76, v108, v113, v114, v115, v116, v98, v110, v111, v112);
        }

        --v87;
      }

      while (v87);
      v85 = 0;
    }

    while ((v86 & 1) != 0);
    v139 = 0u;
    v140 = 0u;
    v137 = 0u;
    v138 = 0u;
    v117 = v76;
    v127 = objc_msgSend_countByEnumeratingWithState_objects_count_(v117, v118, v120, v121, v122, v123, &v137, v141, 16, v119);
    if (v127)
    {
      v132 = *v138;
      do
      {
        for (i = 0; i != v127; ++i)
        {
          if (*v138 != v132)
          {
            objc_enumerationMutation(v117);
          }

          objc_msgSend_p_addAllDrawablesFromInfo_toMutableArray_(self, v124, v128, v129, v130, v131, *(*(&v137 + 1) + 8 * i), v15, v125, v126);
        }

        v127 = objc_msgSend_countByEnumeratingWithState_objects_count_(v117, v124, v128, v129, v130, v131, &v137, v141, 16, v126);
      }

      while (v127);
    }

LABEL_25:
    ++v20;
  }

  while (v20 != 3);

  return v15;
}

- (TPPageTemplate)pageTemplate
{
  v10 = objc_msgSend_sectionTemplatePageForType_(self, a2, v5, v6, v7, v8, 0, v2, v3, v4);
  v20 = objc_msgSend_pageTemplateUUIDPath(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);

  if (v20)
  {
    objc_opt_class();
    v30 = objc_msgSend_documentRoot(self, v21, v26, v27, v28, v29, v22, v23, v24, v25);
    v40 = objc_msgSend_context(v30, v31, v36, v37, v38, v39, v32, v33, v34, v35);
    v49 = objc_msgSend_objectWithUUIDPath_(v40, v41, v45, v46, v47, v48, v20, v42, v43, v44);
    v50 = TSUDynamicCast();

    if (v50)
    {
      goto LABEL_5;
    }

    v59 = MEMORY[0x277D81150];
    v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, v55, v56, v57, v58, "[TPSection(Propagation) pageTemplate]", v52, v53, v54);
    v69 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v61, v65, v66, v67, v68, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSection+Propagation.m", v62, v63, v64);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v59, v70, v71, v72, v73, v74, v60, v69, 32, 0, "invalid nil value for '%{public}s'", "pageTemplate");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v75, v80, v81, v82, v83, v76, v77, v78, v79);
  }

  v50 = 0;
LABEL_5:

  return v50;
}

- (NSArray)pageInfosForPropagation
{
  v11 = objc_msgSend_documentRoot(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v20 = objc_msgSend_paginatedPageControllerForDelegate_(TPPaginatedPageController, v12, v16, v17, v18, v19, v11, v13, v14, v15);
  v30 = objc_msgSend_array(MEMORY[0x277CBEB18], v21, v26, v27, v28, v29, v22, v23, v24, v25);
  v40 = objc_msgSend_bodyStorage(v11, v31, v36, v37, v38, v39, v32, v33, v34, v35);
  v49 = objc_msgSend_sectionIndexForSection_(v40, v41, v45, v46, v47, v48, self, v42, v43, v44);

  if (v49 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v58 = MEMORY[0x277D81150];
    v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, v54, v55, v56, v57, "[TPSection(Propagation) pageInfosForPropagation]", v51, v52, v53);
    v68 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v60, v64, v65, v66, v67, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSection+Propagation.m", v61, v62, v63);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v58, v69, v70, v71, v72, v73, v59, v68, 43, 0, "Unable to find this TPSection object in the body storage");
LABEL_5:

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v97, v102, v103, v104, v105, v98, v99, v100, v101);
    goto LABEL_6;
  }

  v74 = objc_msgSend_documentPageRangeOfSectionIndex_forcePagination_(v20, v50, v54, v55, v56, v57, v49, 1, v52, v53);
  if (v74 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v83 = MEMORY[0x277D81150];
    v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v75, v79, v80, v81, v82, "[TPSection(Propagation) pageInfosForPropagation]", v76, v77, v78);
    v68 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v84, v88, v89, v90, v91, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSection+Propagation.m", v85, v86, v87);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v83, v92, v93, v94, v95, v96, v59, v68, 46, 0, "The page controller has no pages for this section");
    goto LABEL_5;
  }

  v107 = v74;
  v108 = v75;
  if (v74 < &v75[v74])
  {
    do
    {
      v109 = [TPPaginatedPageInfo alloc];
      v116 = objc_msgSend_initWithPageIndex_documentRoot_layoutInfoProvider_(v109, v110, v112, v113, v114, v115, v107, v11, v20, v111);
      objc_msgSend_addObject_(v30, v117, v121, v122, v123, v124, v116, v118, v119, v120);

      ++v107;
      --v108;
    }

    while (v108);
  }

LABEL_6:

  return v30;
}

@end