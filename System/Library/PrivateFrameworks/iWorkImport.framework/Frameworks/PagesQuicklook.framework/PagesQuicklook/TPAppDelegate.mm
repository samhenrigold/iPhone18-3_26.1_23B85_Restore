@interface TPAppDelegate
+ (TPAppPropertiesProvider)tp_sharedPropertiesProvider;
+ (id)sharedDelegate;
- (TPAppDelegate)init;
- (id)createCompatibilityDelegate;
- (id)universalPreviewImageNameForDocumentType:(id)type;
- (void)dealloc;
- (void)p_localeChanged:(id)changed;
- (void)registerSOSClassTypeMappings;
@end

@implementation TPAppDelegate

- (TPAppDelegate)init
{
  v220.receiver = self;
  v220.super_class = TPAppDelegate;
  v7 = [(TSABaseApplicationDelegate *)&v220 init];
  if (v7)
  {
    v12 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v2, v8, v9, v10, v11, v3, v4, v5, v6);
    objc_msgSend_addObserver_selector_name_object_(v12, v13, v14, v15, v16, v17, v7, sel_p_localeChanged_, *MEMORY[0x277CBE620], 0);

    sub_275FBAC4C(v24, v25, v26, v27, v18, v19, v20, v21, v22, v23);
    objc_msgSend_registerSOSClassTypeMappings(v7, v28, v33, v34, v35, v36, v29, v30, v31, v32);
    v37 = objc_opt_class();
    objc_msgSend_resetSharedConfigurations(v37, v38, v43, v44, v45, v46, v39, v40, v41, v42);
    v56 = objc_msgSend_sharedTableConfiguration(MEMORY[0x277D80D00], v47, v52, v53, v54, v55, v48, v49, v50, v51);
    objc_msgSend_setSupportsContainedTextEditing_(v56, v57, v61, v62, v63, v64, 1, v58, v59, v60);
    objc_msgSend_setSupportsControlCells_(v56, v65, v69, v70, v71, v72, 0, v66, v67, v68);
    objc_msgSend_setShowsCellWarningIndicator_(v56, v73, v77, v78, v79, v80, 0, v74, v75, v76);
    objc_msgSend_setMaxNumberOfRows_(v56, v81, v85, v86, v87, v88, 999, v82, v83, v84);
    objc_msgSend_setMaxNumberOfColumns_(v56, v89, v93, v94, v95, v96, 65, v90, v91, v92);
    objc_msgSend_setAllowHorizontalAutoresize_(v56, v97, v101, v102, v103, v104, 0, v98, v99, v100);
    objc_msgSend_setShowsHideUnhideUI_(v56, v105, v109, v110, v111, v112, 0, v106, v107, v108);
    objc_msgSend_setExportPermanentHidingState_(v56, v113, v117, v118, v119, v120, 1, v114, v115, v116);
    objc_msgSend_setPasteFilterHidingAsUserHiding_(v56, v121, v125, v126, v127, v128, 1, v122, v123, v124);
    objc_msgSend_setAllowsFullyFilteredTables_(v56, v129, v133, v134, v135, v136, 0, v130, v131, v132);
    objc_msgSend_setExportsCellAnnotations_(v56, v137, v141, v142, v143, v144, 1, v138, v139, v140);
    objc_msgSend_setSupportsCellCommentsActivityLines_(v56, v145, v149, v150, v151, v152, 1, v146, v147, v148);
    objc_msgSend_setSupportsRepeatHeaderRowsOnEachPage_(v56, v153, v157, v158, v159, v160, 1, v154, v155, v156);
    objc_msgSend_setSupportsInlineAttachments_(v56, v161, v165, v166, v167, v168, 1, v162, v163, v164);
    objc_msgSend_setSupportsTableColumnAutocomplete_(v56, v169, v173, v174, v175, v176, 0, v170, v171, v172);
    v186 = objc_msgSend_sharedChartConfiguration(MEMORY[0x277D80040], v177, v182, v183, v184, v185, v178, v179, v180, v181);
    objc_msgSend_setSupportsTextBackground_(v186, v187, v191, v192, v193, v194, 1, v188, v189, v190);
    objc_msgSend_setSupportsTextWrapping_(v186, v195, v199, v200, v201, v202, 1, v196, v197, v198);
    objc_msgSend_setModifyChartDataHelpKey_(v186, v203, v207, v208, v209, v210, @"tana5ac9c5ea", v204, v205, v206);
    objc_msgSend_setAnalyticsAppType_(v186, v211, v215, v216, v217, v218, 3, v212, v213, v214);
  }

  return v7;
}

+ (TPAppPropertiesProvider)tp_sharedPropertiesProvider
{
  objc_opt_class();
  v12 = objc_msgSend_sharedPropertiesProvider(self, v3, v8, v9, v10, v11, v4, v5, v6, v7);
  v13 = TSUCheckedDynamicCast();

  return v13;
}

- (void)dealloc
{
  v11 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, v6, v7, v8, v9, v2, v3, v4, v5);
  objc_msgSend_removeObserver_(v11, v12, v16, v17, v18, v19, self, v13, v14, v15);

  v20.receiver = self;
  v20.super_class = TPAppDelegate;
  [(TPAppDelegate *)&v20 dealloc];
}

+ (id)sharedDelegate
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___TPAppDelegate;
  v2 = objc_msgSendSuper2(&v4, sel_sharedDelegate);

  return v2;
}

- (id)createCompatibilityDelegate
{
  v2 = objc_alloc_init(TPQuicklookCompatibilityDelegate);

  return v2;
}

- (id)universalPreviewImageNameForDocumentType:(id)type
{
  v90[2] = *MEMORY[0x277D85DE8];
  typeCopy = type;
  v4 = objc_opt_class();
  v14 = objc_msgSend_tp_sharedPropertiesProvider(v4, v5, v10, v11, v12, v13, v6, v7, v8, v9);
  v90[0] = @"com.apple.iwork.pages.template";
  v90[1] = @"com.apple.iwork.pages.sfftemplate";
  v22 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v15, v18, v19, v20, v21, v90, 2, v16, v17);
  v31 = objc_msgSend_tsu_conformsToAnyUTI_(typeCopy, v23, v27, v28, v29, v30, v22, v24, v25, v26);

  if (v31)
  {
    v41 = @"doc_manager_template";
  }

  else
  {
    v42 = objc_msgSend_wordDocumentTypes(v14, v32, v37, v38, v39, v40, v33, v34, v35, v36);
    v51 = objc_msgSend_tsu_conformsToAnyUTI_(typeCopy, v43, v47, v48, v49, v50, v42, v44, v45, v46);

    if (v51)
    {
      v41 = @"doc_manager_pages_doc";
    }

    else
    {
      v61 = objc_msgSend_textDocumentTypes(v14, v52, v57, v58, v59, v60, v53, v54, v55, v56);
      if (objc_msgSend_tsu_conformsToAnyUTI_(typeCopy, v62, v66, v67, v68, v69, v61, v63, v64, v65))
      {

        v41 = @"doc_manager_pages_txt";
      }

      else
      {
        v79 = objc_msgSend_rtfDocumentTypes(v14, v70, v75, v76, v77, v78, v71, v72, v73, v74);
        v88 = objc_msgSend_tsu_conformsToAnyUTI_(typeCopy, v80, v84, v85, v86, v87, v79, v81, v82, v83);

        if (v88)
        {
          v41 = @"doc_manager_pages_txt";
        }

        else
        {
          v41 = @"doc_manager_pages_classic";
        }
      }
    }
  }

  return v41;
}

- (void)registerSOSClassTypeMappings
{
  v2.receiver = self;
  v2.super_class = TPAppDelegate;
  [(TSABaseApplicationDelegate *)&v2 registerSOSClassTypeMappings];
}

- (void)p_localeChanged:(id)changed
{
  v10 = objc_msgSend_currentLocale(MEMORY[0x277CBEAF8], a2, v6, v7, v8, v9, changed, v3, v4, v5);
  if (v10)
  {
    v40 = v10;
    v19 = objc_msgSend_objectForKey_(v10, v11, v15, v16, v17, v18, *MEMORY[0x277CBE718], v12, v13, v14);
    v29 = v19;
    if (v19)
    {
      v30 = objc_msgSend_BOOLValue(v19, v20, v25, v26, v27, v28, v21, v22, v23, v24);
    }

    else
    {
      v30 = 0;
    }

    v31 = objc_msgSend_instance(MEMORY[0x277D806C0], v20, v25, v26, v27, v28, v21, v22, v23, v24);
    objc_msgSend_setRulerUnits_(v31, v32, v36, v37, v38, v39, v30, v33, v34, v35);

    v10 = v40;
  }
}

@end