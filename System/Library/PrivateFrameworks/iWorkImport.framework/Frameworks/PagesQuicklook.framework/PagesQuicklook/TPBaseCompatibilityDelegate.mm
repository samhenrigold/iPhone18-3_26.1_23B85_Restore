@interface TPBaseCompatibilityDelegate
- (BOOL)isExportSupportedForType:(id)type exporterOptions:(id)options documentRoot:(id)root;
- (BOOL)isIBADocumentType:(id)type;
- (BOOL)isSageDocumentType:(id)type;
- (BOOL)isTextOnlyType:(id)type;
- (Class)exportOptionsControllerClass;
- (Class)exporterClassForType:(id)type options:(id)options;
- (id)EPUBExportCategories;
- (id)backwardsCompatibleTypeForType:(id)type;
- (id)exportableTypes;
- (id)newExportableDocumentTypesForFlag:(unint64_t)flag;
- (id)unsupportedExportMessageStringForType:(id)type;
@end

@implementation TPBaseCompatibilityDelegate

- (id)newExportableDocumentTypesForFlag:(unint64_t)flag
{
  flagCopy = flag;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = v4;
  if (flagCopy)
  {
    v48 = objc_msgSend_tsa_sharedPropertiesProvider(TPAppDelegate, v5, v10, v11, v12, v13, v6, v7, v8, v9);
    v49 = MEMORY[0x277D7FFB0];
    v59 = objc_msgSend_nativeDocumentType(v48, v50, v55, v56, v57, v58, v51, v52, v53, v54);
    v69 = objc_msgSend_applicationDisplayName(v48, v60, v65, v66, v67, v68, v61, v62, v63, v64);
    v76 = objc_msgSend_exportableTypeWithType_localizedName_exportProgressMessage_(v49, v70, v72, v73, v74, v75, v59, v69, 0, v71);
    objc_msgSend_addObject_(v14, v77, v81, v82, v83, v84, v76, v78, v79, v80);

    if ((flagCopy & 4) == 0)
    {
LABEL_3:
      if ((flagCopy & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((flagCopy & 4) == 0)
  {
    goto LABEL_3;
  }

  v85 = MEMORY[0x277D7FFB0];
  v86 = objc_msgSend_identifier(*MEMORY[0x277CE1E08], v5, v10, v11, v12, v13, v6, v7, v8, v9);
  v87 = sub_275FFFC3C(v86);
  v94 = objc_msgSend_localizedStringForKey_value_table_(v87, v88, v90, v91, v92, v93, @"PDF", &stru_288501738, @"Pages", v89);
  v95 = sub_275FFFC3C(v94);
  v102 = objc_msgSend_localizedStringForKey_value_table_(v95, v96, v98, v99, v100, v101, @"Creating a PDF file\\U2026", &stru_288501738, @"Pages", v97);
  v109 = objc_msgSend_exportableTypeWithType_localizedName_exportProgressMessage_(v85, v103, v105, v106, v107, v108, v86, v94, v102, v104);
  objc_msgSend_addObject_(v14, v110, v114, v115, v116, v117, v109, v111, v112, v113);

  if ((flagCopy & 8) == 0)
  {
LABEL_4:
    if ((flagCopy & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v118 = MEMORY[0x277D7FFB0];
  v119 = sub_275FFFC3C(v4);
  v126 = objc_msgSend_localizedStringForKey_value_table_(v119, v120, v122, v123, v124, v125, @"Word", &stru_288501738, @"Pages", v121);
  v127 = sub_275FFFC3C(v126);
  v134 = objc_msgSend_localizedStringForKey_value_table_(v127, v128, v130, v131, v132, v133, @"Creating a Word file\\U2026", &stru_288501738, @"Pages", v129);
  v141 = objc_msgSend_exportableTypeWithType_localizedName_exportProgressMessage_(v118, v135, v137, v138, v139, v140, @"org.openxmlformats.wordprocessingml.document", v126, v134, v136);
  objc_msgSend_addObject_(v14, v142, v146, v147, v148, v149, v141, v143, v144, v145);

  if ((flagCopy & 0x10) == 0)
  {
LABEL_5:
    if ((flagCopy & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v150 = MEMORY[0x277D7FFB0];
  v151 = sub_275FFFC3C(v4);
  v158 = objc_msgSend_localizedStringForKey_value_table_(v151, v152, v154, v155, v156, v157, @"EPUB", &stru_288501738, @"Pages", v153);
  v159 = sub_275FFFC3C(v158);
  v166 = objc_msgSend_localizedStringForKey_value_table_(v159, v160, v162, v163, v164, v165, @"Creating an EPUB file\\U2026", &stru_288501738, @"Pages", v161);
  v173 = objc_msgSend_exportableTypeWithType_localizedName_exportProgressMessage_(v150, v167, v169, v170, v171, v172, @"org.idpf.epub-container", v158, v166, v168);
  objc_msgSend_addObject_(v14, v174, v178, v179, v180, v181, v173, v175, v176, v177);

  if ((flagCopy & 0x20) == 0)
  {
LABEL_6:
    if ((flagCopy & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v182 = MEMORY[0x277D7FFB0];
  v183 = objc_msgSend_identifier(*MEMORY[0x277CE1E20], v5, v10, v11, v12, v13, v6, v7, v8, v9);
  v184 = sub_275FFFC3C(v183);
  v191 = objc_msgSend_localizedStringForKey_value_table_(v184, v185, v187, v188, v189, v190, @"Plain Text", &stru_288501738, @"Pages", v186);
  v192 = sub_275FFFC3C(v191);
  v199 = objc_msgSend_localizedStringForKey_value_table_(v192, v193, v195, v196, v197, v198, @"Creating a TXT file\\U2026", &stru_288501738, @"Pages", v194);
  v206 = objc_msgSend_exportableTypeWithType_localizedName_exportProgressMessage_(v182, v200, v202, v203, v204, v205, v183, v191, v199, v201);
  objc_msgSend_addObject_(v14, v207, v211, v212, v213, v214, v206, v208, v209, v210);

  if ((flagCopy & 0x40) == 0)
  {
LABEL_7:
    if ((flagCopy & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  v215 = MEMORY[0x277D7FFB0];
  v216 = objc_msgSend_identifier(*MEMORY[0x277CE1E50], v5, v10, v11, v12, v13, v6, v7, v8, v9);
  v217 = sub_275FFFC3C(v216);
  v224 = objc_msgSend_localizedStringForKey_value_table_(v217, v218, v220, v221, v222, v223, @"RTF", &stru_288501738, @"Pages", v219);
  v225 = sub_275FFFC3C(v224);
  v232 = objc_msgSend_localizedStringForKey_value_table_(v225, v226, v228, v229, v230, v231, @"Creating an RTF file\\U2026", &stru_288501738, @"Pages", v227);
  v239 = objc_msgSend_exportableTypeWithType_localizedName_exportProgressMessage_(v215, v233, v235, v236, v237, v238, v216, v224, v232, v234);
  objc_msgSend_addObject_(v14, v240, v244, v245, v246, v247, v239, v241, v242, v243);

  if ((flagCopy & 0x100) == 0)
  {
LABEL_8:
    if ((flagCopy & 0x80) == 0)
    {
      goto LABEL_9;
    }

LABEL_19:
    v281 = MEMORY[0x277D7FFB0];
    v282 = sub_275FFFC3C(v4);
    v289 = objc_msgSend_localizedStringForKey_value_table_(v282, v283, v285, v286, v287, v288, @"Pages Template", &stru_288501738, @"Pages", v284);
    v290 = sub_275FFFC3C(v289);
    v297 = objc_msgSend_localizedStringForKey_value_table_(v290, v291, v293, v294, v295, v296, @"Creating a template file…", &stru_288501738, @"Pages", v292);
    v304 = objc_msgSend_exportableTypeWithType_localizedName_exportProgressMessage_(v281, v298, v300, v301, v302, v303, @"com.apple.iwork.pages.sfftemplate", v289, v297, v299);
    objc_msgSend_addObject_(v14, v305, v309, v310, v311, v312, v304, v306, v307, v308);

    if ((flagCopy & 2) == 0)
    {
      return v14;
    }

    goto LABEL_10;
  }

LABEL_18:
  v248 = MEMORY[0x277D7FFB0];
  v249 = objc_msgSend_identifier(*MEMORY[0x277CE1DB0], v5, v10, v11, v12, v13, v6, v7, v8, v9);
  v250 = sub_275FFFC3C(v249);
  v257 = objc_msgSend_localizedStringForKey_value_table_(v250, v251, v253, v254, v255, v256, @"Images", &stru_288501738, @"Pages", v252);
  v258 = sub_275FFFC3C(v257);
  v265 = objc_msgSend_localizedStringForKey_value_table_(v258, v259, v261, v262, v263, v264, @"Creating images\\U2026", &stru_288501738, @"Pages", v260);
  v272 = objc_msgSend_exportableTypeWithType_localizedName_exportProgressMessage_(v248, v266, v268, v269, v270, v271, v249, v257, v265, v267);
  objc_msgSend_addObject_(v14, v273, v277, v278, v279, v280, v272, v274, v275, v276);

  if ((flagCopy & 0x80) != 0)
  {
    goto LABEL_19;
  }

LABEL_9:
  if ((flagCopy & 2) != 0)
  {
LABEL_10:
    v15 = MEMORY[0x277D7FFB0];
    v16 = sub_275FFFC3C(v4);
    v23 = objc_msgSend_localizedStringForKey_value_table_(v16, v17, v19, v20, v21, v22, @"Pages \\U201909", &stru_288501738, @"Pages", v18);
    v24 = sub_275FFFC3C(v23);
    v31 = objc_msgSend_localizedStringForKey_value_table_(v24, v25, v27, v28, v29, v30, @"Creating a Pages \\U201909 file\\U2026", &stru_288501738, @"Pages", v26);
    v38 = objc_msgSend_exportableTypeWithType_localizedName_exportProgressMessage_(v15, v32, v34, v35, v36, v37, @"com.apple.iwork.pages.sffpages", v23, v31, v33);
    objc_msgSend_addObject_(v14, v39, v43, v44, v45, v46, v38, v40, v41, v42);
  }

  return v14;
}

- (id)EPUBExportCategories
{
  v259[31] = *MEMORY[0x277D85DE8];
  v258 = sub_275FFFC3C(self);
  v257 = objc_msgSend_localizedStringForKey_value_table_(v258, v2, v4, v5, v6, v7, @"Arts & Entertainment", &stru_288501738, @"Pages", v3);
  v259[0] = v257;
  v256 = sub_275FFFC3C(v257);
  v255 = objc_msgSend_localizedStringForKey_value_table_(v256, v8, v10, v11, v12, v13, @"Biographies & Memoirs", &stru_288501738, @"Pages", v9);
  v259[1] = v255;
  v254 = sub_275FFFC3C(v255);
  v253 = objc_msgSend_localizedStringForKey_value_table_(v254, v14, v16, v17, v18, v19, @"Business & Personal Finance", &stru_288501738, @"Pages", v15);
  v259[2] = v253;
  v252 = sub_275FFFC3C(v253);
  v251 = objc_msgSend_localizedStringForKey_value_table_(v252, v20, v22, v23, v24, v25, @"Children & Teens", &stru_288501738, @"Pages", v21);
  v259[3] = v251;
  v250 = sub_275FFFC3C(v251);
  v249 = objc_msgSend_localizedStringForKey_value_table_(v250, v26, v28, v29, v30, v31, @"Comics & Graphic Novels", &stru_288501738, @"Pages", v27);
  v259[4] = v249;
  v248 = sub_275FFFC3C(v249);
  v247 = objc_msgSend_localizedStringForKey_value_table_(v248, v32, v34, v35, v36, v37, @"Communications & Media", &stru_288501738, @"Pages", v33);
  v259[5] = v247;
  v246 = sub_275FFFC3C(v247);
  v245 = objc_msgSend_localizedStringForKey_value_table_(v246, v38, v40, v41, v42, v43, @"Computers & Technology", &stru_288501738, @"Pages", v39);
  v259[6] = v245;
  v244 = sub_275FFFC3C(v245);
  v243 = objc_msgSend_localizedStringForKey_value_table_(v244, v44, v46, v47, v48, v49, @"Cookbooks, Food & Wine", &stru_288501738, @"Pages", v45);
  v259[7] = v243;
  v242 = sub_275FFFC3C(v243);
  v241 = objc_msgSend_localizedStringForKey_value_table_(v242, v50, v52, v53, v54, v55, @"Family & Relationships", &stru_288501738, @"Pages", v51);
  v259[8] = v241;
  v240 = sub_275FFFC3C(v241);
  v239 = objc_msgSend_localizedStringForKey_value_table_(v240, v56, v58, v59, v60, v61, @"Fiction & Literature", &stru_288501738, @"Pages", v57);
  v259[9] = v239;
  v238 = sub_275FFFC3C(v239);
  v237 = objc_msgSend_localizedStringForKey_value_table_(v238, v62, v64, v65, v66, v67, @"General Nonfiction", &stru_288501738, @"Pages", v63);
  v259[10] = v237;
  v236 = sub_275FFFC3C(v237);
  v235 = objc_msgSend_localizedStringForKey_value_table_(v236, v68, v70, v71, v72, v73, @"Health, Mind & Body", &stru_288501738, @"Pages", v69);
  v259[11] = v235;
  v234 = sub_275FFFC3C(v235);
  v233 = objc_msgSend_localizedStringForKey_value_table_(v234, v74, v76, v77, v78, v79, @"History", &stru_288501738, @"Pages", v75);
  v259[12] = v233;
  v232 = sub_275FFFC3C(v233);
  v231 = objc_msgSend_localizedStringForKey_value_table_(v232, v80, v82, v83, v84, v85, @"Humor", &stru_288501738, @"Pages", v81);
  v259[13] = v231;
  v230 = sub_275FFFC3C(v231);
  v229 = objc_msgSend_localizedStringForKey_value_table_(v230, v86, v88, v89, v90, v91, @"Language Studies", &stru_288501738, @"Pages", v87);
  v259[14] = v229;
  v228 = sub_275FFFC3C(v229);
  v227 = objc_msgSend_localizedStringForKey_value_table_(v228, v92, v94, v95, v96, v97, @"Lifestyle & Home", &stru_288501738, @"Pages", v93);
  v259[15] = v227;
  v226 = sub_275FFFC3C(v227);
  v225 = objc_msgSend_localizedStringForKey_value_table_(v226, v98, v100, v101, v102, v103, @"Mathematics", &stru_288501738, @"Pages", v99);
  v259[16] = v225;
  v224 = sub_275FFFC3C(v225);
  v223 = objc_msgSend_localizedStringForKey_value_table_(v224, v104, v106, v107, v108, v109, @"Mysteries & Thrillers", &stru_288501738, @"Pages", v105);
  v259[17] = v223;
  v222 = sub_275FFFC3C(v223);
  v221 = objc_msgSend_localizedStringForKey_value_table_(v222, v110, v112, v113, v114, v115, @"Philosophy", &stru_288501738, @"Pages", v111);
  v259[18] = v221;
  v220 = sub_275FFFC3C(v221);
  v219 = objc_msgSend_localizedStringForKey_value_table_(v220, v116, v118, v119, v120, v121, @"Politics & Current Events", &stru_288501738, @"Pages", v117);
  v259[19] = v219;
  v218 = sub_275FFFC3C(v219);
  v217 = objc_msgSend_localizedStringForKey_value_table_(v218, v122, v124, v125, v126, v127, @"Professional & Technical", &stru_288501738, @"Pages", v123);
  v259[20] = v217;
  v216 = sub_275FFFC3C(v217);
  v215 = objc_msgSend_localizedStringForKey_value_table_(v216, v128, v130, v131, v132, v133, @"Reference", &stru_288501738, @"Pages", v129);
  v259[21] = v215;
  v214 = sub_275FFFC3C(v215);
  v213 = objc_msgSend_localizedStringForKey_value_table_(v214, v134, v136, v137, v138, v139, @"Religion & Spirituality", &stru_288501738, @"Pages", v135);
  v259[22] = v213;
  v212 = sub_275FFFC3C(v213);
  v211 = objc_msgSend_localizedStringForKey_value_table_(v212, v140, v142, v143, v144, v145, @"Romance", &stru_288501738, @"Pages", v141);
  v259[23] = v211;
  v210 = sub_275FFFC3C(v211);
  v209 = objc_msgSend_localizedStringForKey_value_table_(v210, v146, v148, v149, v150, v151, @"Sci-Fi & Fantasy", &stru_288501738, @"Pages", v147);
  v259[24] = v209;
  v208 = sub_275FFFC3C(v209);
  v207 = objc_msgSend_localizedStringForKey_value_table_(v208, v152, v154, v155, v156, v157, @"Science & Nature", &stru_288501738, @"Pages", v153);
  v259[25] = v207;
  v206 = sub_275FFFC3C(v207);
  v164 = objc_msgSend_localizedStringForKey_value_table_(v206, v158, v160, v161, v162, v163, @"Social Science", &stru_288501738, @"Pages", v159);
  v259[26] = v164;
  v165 = sub_275FFFC3C(v164);
  v172 = objc_msgSend_localizedStringForKey_value_table_(v165, v166, v168, v169, v170, v171, @"Sports & Outdoors", &stru_288501738, @"Pages", v167);
  v259[27] = v172;
  v173 = sub_275FFFC3C(v172);
  v180 = objc_msgSend_localizedStringForKey_value_table_(v173, v174, v176, v177, v178, v179, @"Teaching & Learning", &stru_288501738, @"Pages", v175);
  v259[28] = v180;
  v181 = sub_275FFFC3C(v180);
  v188 = objc_msgSend_localizedStringForKey_value_table_(v181, v182, v184, v185, v186, v187, @"Transportation", &stru_288501738, @"Pages", v183);
  v259[29] = v188;
  v189 = sub_275FFFC3C(v188);
  v196 = objc_msgSend_localizedStringForKey_value_table_(v189, v190, v192, v193, v194, v195, @"Travel & Adventure", &stru_288501738, @"Pages", v191);
  v259[30] = v196;
  v204 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v197, v200, v201, v202, v203, v259, 31, v198, v199);

  return v204;
}

- (Class)exporterClassForType:(id)type options:(id)options
{
  typeCopy = type;
  optionsCopy = options;
  if (typeCopy && (objc_msgSend_identifier(*MEMORY[0x277CE1E08], v6, v12, v13, v14, v15, v7, v8, v9, v10), v16 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend_tsu_conformsToUTI_(typeCopy, v17, v21, v22, v23, v24, v16, v18, v19, v20), v16, v25))
  {
    v26 = objc_opt_class();
  }

  else
  {
    v26 = 0;
  }

  v27 = v26;

  return v26;
}

- (Class)exportOptionsControllerClass
{
  v9 = MEMORY[0x277D81150];
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v5, v6, v7, v8, "[TPBaseCompatibilityDelegate exportOptionsControllerClass]", v2, v3, v4);
  v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPBaseCompatibilityDelegate.m", v12, v13, v14);
  v20 = objc_opt_class();
  v21 = NSStringFromClass(v20);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v22, v23, v24, v25, v26, v10, v19, 259, 0, "Abstract method not overridden by %{public}@", v21);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v32, v33, v34, v35, v28, v29, v30, v31);
  v36 = MEMORY[0x277CBEAD8];
  v37 = *MEMORY[0x277CBE658];
  v38 = MEMORY[0x277CCACA8];
  v39 = objc_opt_class();
  v40 = NSStringFromClass(v39);
  v49 = objc_msgSend_stringWithFormat_(v38, v41, v45, v46, v47, v48, @"Abstract method not overridden by %@: %s", v42, v43, v44, v40, "[TPBaseCompatibilityDelegate exportOptionsControllerClass]");
  v56 = objc_msgSend_exceptionWithName_reason_userInfo_(v36, v50, v52, v53, v54, v55, v37, v49, 0, v51);
  v57 = v56;

  objc_exception_throw(v56);
}

- (id)exportableTypes
{
  v9 = MEMORY[0x277D81150];
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v5, v6, v7, v8, "[TPBaseCompatibilityDelegate exportableTypes]", v2, v3, v4);
  v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPBaseCompatibilityDelegate.m", v12, v13, v14);
  v20 = objc_opt_class();
  v21 = NSStringFromClass(v20);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v22, v23, v24, v25, v26, v10, v19, 263, 0, "Abstract method not overridden by %{public}@", v21);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v32, v33, v34, v35, v28, v29, v30, v31);
  v36 = MEMORY[0x277CBEAD8];
  v37 = *MEMORY[0x277CBE658];
  v38 = MEMORY[0x277CCACA8];
  v39 = objc_opt_class();
  v40 = NSStringFromClass(v39);
  v49 = objc_msgSend_stringWithFormat_(v38, v41, v45, v46, v47, v48, @"Abstract method not overridden by %@: %s", v42, v43, v44, v40, "[TPBaseCompatibilityDelegate exportableTypes]");
  v56 = objc_msgSend_exceptionWithName_reason_userInfo_(v36, v50, v52, v53, v54, v55, v37, v49, 0, v51);
  v57 = v56;

  objc_exception_throw(v56);
}

- (BOOL)isSageDocumentType:(id)type
{
  v22[2] = *MEMORY[0x277D85DE8];
  v22[0] = @"com.apple.iwork.pages.pages";
  v22[1] = @"com.apple.iwork.pages.sffpages";
  v3 = MEMORY[0x277CBEA60];
  typeCopy = type;
  v12 = objc_msgSend_arrayWithObjects_count_(v3, v5, v8, v9, v10, v11, v22, 2, v6, v7);
  LOBYTE(v3) = objc_msgSend_tsu_conformsToAnyUTI_(typeCopy, v13, v17, v18, v19, v20, v12, v14, v15, v16);

  return v3;
}

- (BOOL)isIBADocumentType:(id)type
{
  typeCopy = type;
  v13 = objc_msgSend_tp_sharedPropertiesProvider(TPAppDelegate, v4, v9, v10, v11, v12, v5, v6, v7, v8);
  v23 = objc_msgSend_iBADocumentTypes(v13, v14, v19, v20, v21, v22, v15, v16, v17, v18);
  v32 = objc_msgSend_tsu_conformsToAnyUTI_(typeCopy, v24, v28, v29, v30, v31, v23, v25, v26, v27);

  return v32;
}

- (BOOL)isTextOnlyType:(id)type
{
  v42[2] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CE1E20];
  typeCopy = type;
  v14 = objc_msgSend_identifier(v3, v5, v10, v11, v12, v13, v6, v7, v8, v9);
  v42[0] = v14;
  v24 = objc_msgSend_identifier(*MEMORY[0x277CE1E50], v15, v20, v21, v22, v23, v16, v17, v18, v19);
  v42[1] = v24;
  v32 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v25, v28, v29, v30, v31, v42, 2, v26, v27);
  LOBYTE(v3) = objc_msgSend_tsu_conformsToAnyUTI_(typeCopy, v33, v37, v38, v39, v40, v32, v34, v35, v36);

  return v3;
}

- (BOOL)isExportSupportedForType:(id)type exporterOptions:(id)options documentRoot:(id)root
{
  typeCopy = type;
  rootCopy = root;
  v17 = objc_msgSend_identifier(*MEMORY[0x277CE1E20], v8, v13, v14, v15, v16, v9, v10, v11, v12);
  if (objc_msgSend_isEqualToString_(typeCopy, v18, v22, v23, v24, v25, v17, v19, v20, v21))
  {

    if (!rootCopy)
    {
      hasBody = 1;
      goto LABEL_7;
    }

LABEL_6:
    v55 = objc_msgSend_settings(rootCopy, v35, v40, v41, v42, v43, v36, v37, v38, v39);
    hasBody = objc_msgSend_hasBody(v55, v56, v61, v62, v63, v64, v57, v58, v59, v60);

    goto LABEL_7;
  }

  v45 = objc_msgSend_identifier(*MEMORY[0x277CE1E50], v26, v31, v32, v33, v34, v27, v28, v29, v30);
  isEqualToString = objc_msgSend_isEqualToString_(typeCopy, v46, v50, v51, v52, v53, v45, v47, v48, v49);

  hasBody = 1;
  if (rootCopy && isEqualToString)
  {
    goto LABEL_6;
  }

LABEL_7:

  return hasBody;
}

- (id)backwardsCompatibleTypeForType:(id)type
{
  if (objc_msgSend_isEqualToString_(type, a2, v6, v7, v8, v9, @"org.openxmlformats.wordprocessingml.document", v3, v4, v5))
  {
    v10 = @"com.microsoft.word.doc";
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)unsupportedExportMessageStringForType:(id)type
{
  typeCopy = type;
  v13 = objc_msgSend_identifier(*MEMORY[0x277CE1E20], v4, v9, v10, v11, v12, v5, v6, v7, v8);
  isEqualToString = objc_msgSend_isEqualToString_(typeCopy, v14, v18, v19, v20, v21, v13, v15, v16, v17);

  if (isEqualToString)
  {
    v33 = @"Page layout documents can\\U2019t be exported to TXT.";
LABEL_5:
    v44 = sub_275FFFC3C(v23);
    v51 = objc_msgSend_localizedStringForKey_value_table_(v44, v45, v47, v48, v49, v50, v33, &stru_288501738, @"Pages", v46);

    goto LABEL_7;
  }

  v34 = objc_msgSend_identifier(*MEMORY[0x277CE1E50], v24, v29, v30, v31, v32, v25, v26, v27, v28);
  v43 = objc_msgSend_isEqualToString_(typeCopy, v35, v39, v40, v41, v42, v34, v36, v37, v38);

  if (v43)
  {
    v33 = @"Page layout documents can\\U2019t be exported to RTF.";
    goto LABEL_5;
  }

  v51 = 0;
LABEL_7:

  return v51;
}

@end