@interface StepByStepUIViewController_Create_Config
- (BOOL)validateAndSetValues;
- (void)addDiskPasswordSection;
- (void)setupInitialTableHeaderConfiguration;
- (void)setupTable;
- (void)switchTouchedInCellAtIndexPath:(id)path forSwitchIndex:(unint64_t)index isOn:(BOOL)on;
- (void)touchInCellAtIndexPath:(id)path;
- (void)updateSinglePasswordSwitchExplanation:(BOOL)explanation;
- (void)updateTable;
- (void)updateTableForMultiplePasswords;
- (void)updateTableForSinglePassword;
- (void)validateAndUpdateNextButton;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation StepByStepUIViewController_Create_Config

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  objc_msgSend_setUseSinglePassword_(self, a2, 1, v3);
  objc_msgSend_setDelegate_(self, v5, self, v6);
  v10 = objc_msgSend_inParamDict(self, v7, v8, v9);
  v13 = objc_msgSend_objectForKey_(v10, v11, @"kSBSKey_SelectorChoice", v12);
  if ((objc_msgSend_integerValue(v13, v14, v15, v16) - 101) > 1)
  {
    v287 = 0;
    v288 = 0;
    v26 = 0;
    v37 = 0;
    v27 = 0;
    NetworkPasswordForNetworkNamed = 0;
  }

  else
  {
    v20 = objc_msgSend_inParamDict(self, v17, v18, v19);
    v23 = objc_msgSend_objectForKey_(v20, v21, @"kSBSKey_SourceBase", v22);
    v26 = objc_msgSend_objectForKey_(v23, v24, @"name", v25);
    v27 = sub_23EB6AE58(v23);
    v288 = off_27E3830F0;
    v31 = objc_msgSend_sharedInstance(WiFiUtils, v28, v29, v30);
    NetworkPasswordForNetworkNamed = objc_msgSend_getNetworkPasswordForNetworkNamed_(v31, v32, v27, v33);
    v287 = v23;
    v37 = objc_msgSend_keychainPasswordForBaseStation_(AssistantCallbackController, v35, v23, v36);
  }

  v38 = objc_msgSend_inParamDict(self, v17, v18, v19);
  v41 = objc_msgSend_objectForKey_(v38, v39, @"kSBSKey_TargetBase", v40);
  v42 = sub_23EB6A2C0(v41);
  v46 = objc_msgSend_inParamDict(self, v43, v44, v45);
  v49 = objc_msgSend_objectForKey_(v46, v47, @"kSBSKey_TargetBase", v48);
  v50 = sub_23EB6A294(v49);
  v53 = objc_msgSend_valueForKey_(self->super.super._inParamDict, v51, @"kSBSKey_TargetBaseFeatures", v52);
  v54 = sub_23EB5E1E8(v53, 1297314927);
  objc_msgSend_setHasDisk_(self, v55, v54, v56);
  objc_msgSend_setPersonalizedBaseName_(self, v57, v26, v58);
  v62 = objc_msgSend_personalizedBaseName(self, v59, v60, v61);
  if (!objc_msgSend_length(v62, v63, v64, v65))
  {
    v69 = sub_23EB6D75C(v42, v50);
    objc_msgSend_setPersonalizedBaseName_(self, v70, v69, v71);
  }

  v72 = objc_msgSend_personalizedBaseName(self, v66, v67, v68);
  if (!objc_msgSend_length(v72, v73, v74, v75))
  {
    v78 = sub_23EB6D7A8(v42, v50);
    objc_msgSend_setPersonalizedBaseName_(self, v79, v78, v80);
  }

  if (!v27)
  {
    v27 = objc_msgSend_valueForKey_(self->super.super._outResultsDict, v76, @"kSBSKey_NetworkName", v77);
    if (!v27)
    {
      v27 = sub_23EB6D820(0, v76);
    }
  }

  v289 = v26;
  objc_msgSend_setWifiName_(self, v76, v27, v77);
  if (!NetworkPasswordForNetworkNamed)
  {
    NetworkPasswordForNetworkNamed = objc_msgSend_valueForKey_(self->super.super._outResultsDict, v81, @"kSBSKey_NetworkPassword", v82);
  }

  if (NetworkPasswordForNetworkNamed)
  {
    objc_msgSend_setWifiPassword_(self, v81, NetworkPasswordForNetworkNamed, v82);
  }

  else
  {
    objc_msgSend_setWifiPassword_(self, v81, &stru_285145FE8, v82);
  }

  v86 = objc_msgSend_wifiPassword(self, v83, v84, v85);
  objc_msgSend_setWifiPasswordVerify_(self, v87, v86, v88);
  if (!v37)
  {
    v37 = objc_msgSend_valueForKey_(self->super.super._outResultsDict, v89, @"kSBSKey_BasePassword", v90);
  }

  if (v37)
  {
    objc_msgSend_setBasePassword_(self, v89, v37, v90);
  }

  else
  {
    objc_msgSend_setBasePassword_(self, v89, &stru_285145FE8, v90);
  }

  v94 = objc_msgSend_basePassword(self, v91, v92, v93);
  objc_msgSend_setBasePasswordVerify_(self, v95, v94, v96);
  v100 = objc_msgSend_wifiPassword(self, v97, v98, v99);
  v104 = objc_msgSend_basePassword(self, v101, v102, v103);
  isEqualToString = objc_msgSend_isEqualToString_(v100, v105, v104, v106);
  objc_msgSend_setUseSinglePassword_(self, v108, isEqualToString, v109);
  if (objc_msgSend_hasDisk(self, v110, v111, v112))
  {
    v116 = objc_msgSend_valueForKey_(self->super.super._outResultsDict, v113, @"kSBSKey_DiskSharing_Password", v115);
    if (v116)
    {
      objc_msgSend_setDiskPassword_(self, v117, v116, v118);
    }

    else
    {
      objc_msgSend_setDiskPassword_(self, v117, &stru_285145FE8, v118);
    }

    v122 = objc_msgSend_diskPassword(self, v119, v120, v121);
    objc_msgSend_setDiskPasswordVerify_(self, v123, v122, v124);
    if ((objc_msgSend_useSinglePassword(self, v125, v126, v127) & 1) != 0 || (v131 = objc_msgSend_diskPassword(self, v128, v129, v130), !objc_msgSend_length(v131, v132, v133, v134)))
    {
      objc_msgSend_setUseDifferentDiskPassword_(self, v128, 0, v130);
    }

    else
    {
      v136 = objc_msgSend_diskPassword(self, v128, v135, v130);
      v140 = objc_msgSend_basePassword(self, v137, v138, v139);
      v143 = objc_msgSend_isEqualToString_(v136, v141, v140, v142) ^ 1;
      objc_msgSend_setUseDifferentDiskPassword_(self, v144, v143, v145);
    }
  }

  v146 = objc_msgSend_inParamDict(self, v113, v114, v115);
  v149 = objc_msgSend_objectForKey_(v146, v147, @"kSBSKey_Mode", v148);
  v153 = objc_msgSend_integerValue(v149, v150, v151, v152);
  objc_msgSend_setSbsMode_(self, v154, v153, v155);
  if (objc_msgSend_sbsMode(self, v156, v157, v158) == 2)
  {
    objc_msgSend_setLeftNavigationButton_enable_hide_(self, v159, @"kCancel", 1, 0);
    if (!objc_msgSend_actionController(self, v162, v163, v164))
    {
      v165 = objc_msgSend_tableManager(self, v159, v160, v161);
      v169 = objc_msgSend_parentController(self, v166, v167, v168);
      v171 = objc_msgSend_recommendationActionControllerWithTableManager_andAssistantUIViewController_(RecommendationActionController, v170, v165, v169);
      objc_msgSend_setActionController_(self, v172, v171, v173);
    }
  }

  if (objc_msgSend_sbsMode(self, v159, v160, v161) == 2)
  {
    v177 = objc_msgSend_wifiName(self, v174, v175, v176);
    if (objc_msgSend_length(v177, v178, v179, v180))
    {
      objc_msgSend_wifiName(self, v174, v175, v176);
    }
  }

  v181 = objc_msgSend_inParamDict(self, v174, v175, v176);
  v184 = objc_msgSend_objectForKey_(v181, v182, @"kSBSKey_SelectorChoice", v183);
  if ((objc_msgSend_integerValue(v184, v185, v186, v187) - 101) > 1)
  {
    ProductLocalizedStringWithFormat = objc_msgSend_getProductLocalizedStringWithFormat_(self, v188, @"PrimarySetupRecommendation_Create%@", v189);
  }

  else
  {
    v190 = sub_23EB6CD3C(@"TextualSentenceConcatenator", qword_27E383800);
    v191 = sub_23EB6CD3C(@"TurnOffNamedDeviceBeingReplaced", @"AirPortSettings");
    v195 = objc_msgSend_inParamDict(self, v192, v193, v194);
    v198 = objc_msgSend_objectForKey_(v195, v196, @"kSBSKey_SourceBase", v197);
    v201 = objc_msgSend_objectForKey_(v198, v199, @"name", v200);
    valid = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(MEMORY[0x277CCACA8], v202, v191, @"%@", 0, v201);
    v207 = objc_msgSend_inParamDict(self, v204, v205, v206);
    ProductLocalizedStringWithFormat_fromParamDict = objc_msgSend_getProductLocalizedStringWithFormat_fromParamDict_(StepByStepUtilities, v208, @"PrimarySetupRecommendation_Replace%@", v207);
    v211 = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(MEMORY[0x277CCACA8], v210, ProductLocalizedStringWithFormat_fromParamDict, @"%@", 0, v201);
    ProductLocalizedStringWithFormat = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(MEMORY[0x277CCACA8], v212, v190, @"%@%@", 0, v211, valid);
  }

  sub_23EB5E054(self->super.justTextLabel, self->super.justTextContainerView, ProductLocalizedStringWithFormat, v214);
  v218 = objc_msgSend_tableHeaderContainerView(self, v215, v216, v217);
  objc_msgSend_readjustSubviewsInContainer_(AssistantUIViewController, v219, v218, v220);
  objc_msgSend_setupTable(self, v221, v222, v223);
  objc_msgSend_updateTable(self, v224, v225, v226);
  objc_msgSend_setupInitialTableHeaderConfiguration(self, v227, v228, v229);
  v233 = objc_msgSend_parentController(self, v230, v231, v232);
  v286 = objc_msgSend__assistantUIController(v233, v234, v235, v236);
  v240 = objc_msgSend_topoView(self, v237, v238, v239);
  v244 = objc_msgSend_layer(v240, v241, v242, v243);
  v248 = objc_msgSend_topoLayout(self, v245, v246, v247);
  v252 = objc_msgSend_topoView(self, v249, v250, v251);
  v255 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v253, v42, v254);
  v258 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v256, v50, v257);
  v262 = objc_msgSend_inParamDict(self, v259, v260, v261);
  v265 = objc_msgSend_objectForKey_(v262, v263, @"kSBSKey_TargetNetwork", v264);
  v267 = sub_23EB6D0E0(v265, v42, 0, v266);
  v271 = objc_msgSend_valueForKey_(v287, v268, @"syAP", v269);
  if (v287)
  {
    v272 = MEMORY[0x277CCABB0];
    v273 = sub_23EB6A294(v287);
    v276 = objc_msgSend_numberWithInteger_(v272, v274, v273, v275);
  }

  else
  {
    v276 = 0;
  }

  v277 = objc_msgSend_modifyTopoUIInLayer_withLayout_andOwningView_targetProductID_targetDeviceKind_targetName_targetWiFiName_sourceProductID_sourceDeviceKind_sourceName_sourceWiFiName_connectionType_(v286, v270, v244, v248, v252, v255, v258, v267, 0, v271, v276, v289, 0, v288);
  objc_msgSend_setTopoLayout_(self, v278, v277, v279);
  objc_msgSend_validateAndUpdateNextButton(self, v280, v281, v282);
  objc_msgSend_setValue_forKey_(self->super.super._outResultsDict, v283, &stru_285145FE8, @"kSBSKey_BasePassword");
  objc_msgSend_setValue_forKey_(self->super.super._outResultsDict, v284, &stru_285145FE8, @"kSBSKey_NetworkPassword");
  objc_msgSend_setValue_forKey_(self->super.super._outResultsDict, v285, &stru_285145FE8, @"kSBSKey_DiskSharing_Password");
  v291.receiver = self;
  v291.super_class = StepByStepUIViewController_Create_Config;
  [(StepByStepUIViewController *)&v291 viewWillAppear:appearCopy];
}

- (BOOL)validateAndSetValues
{
  v5 = objc_msgSend_tableManager(self, a2, v2, v3);
  if (objc_msgSend_indexOfSectionWithIdentifier_(v5, v6, @"WiFiName", v7) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = 1;
  }

  else
  {
    v12 = objc_msgSend_tableManager(self, v8, v9, v10);
    ValueForFirstItemOfType_inCellWithTag = objc_msgSend_getValueForFirstItemOfType_inCellWithTag_(v12, v13, @"editTextView", 1464225389);
    objc_msgSend_setWifiName_(self, v15, ValueForFirstItemOfType_inCellWithTag, v16);
    v20 = objc_msgSend_wifiName(self, v17, v18, v19);
    v24 = objc_msgSend_UTF8String(v20, v21, v22, v23);
    v11 = sub_23EB6BB98(v24) != 0;
  }

  v25 = objc_msgSend_tableManager(self, v8, v9, v10);
  v27 = objc_msgSend_getValueForFirstItemOfType_inCellWithTag_(v25, v26, @"editTextView", 1937329773);
  objc_msgSend_setPersonalizedBaseName_(self, v28, v27, v29);
  if (objc_msgSend_personalizedBaseName(self, v30, v31, v32))
  {
    v36 = objc_msgSend_personalizedBaseName(self, v33, v34, v35);
    v40 = objc_msgSend_UTF8String(v36, v37, v38, v39);
    v11 &= sub_23EB6BC14(v40) != 0;
  }

  v41 = objc_msgSend_tableManager(self, v33, v34, v35);
  v43 = objc_msgSend_getValueForFirstItemOfType_inCellWithTag_(v41, v42, @"editTextView", 1464225889);
  objc_msgSend_setWifiPassword_(self, v44, v43, v45);
  v49 = objc_msgSend_tableManager(self, v46, v47, v48);
  v51 = objc_msgSend_getValueForFirstItemOfType_inCellWithTag_(v49, v50, @"editTextView", 1464225878);
  objc_msgSend_setWifiPasswordVerify_(self, v52, v51, v53);
  v57 = objc_msgSend_tableManager(self, v54, v55, v56);
  v61 = objc_msgSend_wifiPassword(self, v58, v59, v60);
  v65 = objc_msgSend_wifiPasswordVerify(self, v62, v63, v64);
  v67 = objc_msgSend_verifyStr1_forTag1_matchesStr2_forTag2_(v57, v66, v61, 1464225889, v65, 1464225878);
  v71 = objc_msgSend_wifiPassword(self, v68, v69, v70);
  v75 = objc_msgSend_UTF8String(v71, v72, v73, v74);
  if (!v75)
  {
    return 0;
  }

  v76 = v75;
  v77 = sub_23EB6BBDC(v75);
  v78 = v77 != 0;
  if (objc_msgSend_useSinglePassword(self, v79, v80, v81))
  {
    if (sub_23EB6BC58(v76))
    {
      v85 = v77 == 0;
    }

    else
    {
      v85 = 1;
    }

    v78 = !v85;
  }

  v86 = v78 & v67 & v11;
  if ((objc_msgSend_useSinglePassword(self, v82, v83, v84) & 1) == 0)
  {
    v90 = objc_msgSend_tableManager(self, v87, v88, v89);
    v92 = objc_msgSend_getValueForFirstItemOfType_inCellWithTag_(v90, v91, @"editTextView", 1113673825);
    objc_msgSend_setBasePassword_(self, v93, v92, v94);
    v98 = objc_msgSend_tableManager(self, v95, v96, v97);
    v100 = objc_msgSend_getValueForFirstItemOfType_inCellWithTag_(v98, v99, @"editTextView", 1113673814);
    objc_msgSend_setBasePasswordVerify_(self, v101, v100, v102);
    v106 = objc_msgSend_tableManager(self, v103, v104, v105);
    v110 = objc_msgSend_basePassword(self, v107, v108, v109);
    v114 = objc_msgSend_basePasswordVerify(self, v111, v112, v113);
    LOBYTE(v106) = objc_msgSend_verifyStr1_forTag1_matchesStr2_forTag2_(v106, v115, v110, 1113673825, v114, 1113673814);
    v119 = objc_msgSend_basePassword(self, v116, v117, v118);
    v123 = objc_msgSend_UTF8String(v119, v120, v121, v122);
    v86 &= (sub_23EB6BC58(v123) != 0) & v106;
    if (objc_msgSend_hasDisk(self, v124, v125, v126))
    {
      if (objc_msgSend_useDifferentDiskPassword(self, v127, v128, v129))
      {
        v133 = objc_msgSend_tableManager(self, v130, v131, v132);
        v135 = objc_msgSend_getValueForFirstItemOfType_inCellWithTag_(v133, v134, @"editTextView", 1147752545);
        objc_msgSend_setDiskPassword_(self, v136, v135, v137);
        v141 = objc_msgSend_tableManager(self, v138, v139, v140);
        v143 = objc_msgSend_getValueForFirstItemOfType_inCellWithTag_(v141, v142, @"editTextView", 1147752534);
        objc_msgSend_setDiskPasswordVerify_(self, v144, v143, v145);
        v149 = objc_msgSend_tableManager(self, v146, v147, v148);
        v153 = objc_msgSend_diskPassword(self, v150, v151, v152);
        v157 = objc_msgSend_diskPasswordVerify(self, v154, v155, v156);
        LOBYTE(v149) = objc_msgSend_verifyStr1_forTag1_matchesStr2_forTag2_(v149, v158, v153, 1147752545, v157, 1147752534);
        v162 = objc_msgSend_diskPassword(self, v159, v160, v161);
        v166 = objc_msgSend_UTF8String(v162, v163, v164, v165);
        return (sub_23EB6BCE0(v166) != 0) & v149 & v86;
      }
    }
  }

  return v86;
}

- (void)updateTableForSinglePassword
{
  v5 = objc_msgSend_tableManager(self, a2, v2, v3);
  objc_msgSend_deleteSectionWithIdentifier_animated_(v5, v6, @"WiFiPassword", 0);
  v10 = objc_msgSend_tableManager(self, v7, v8, v9);
  objc_msgSend_deleteSectionWithIdentifier_animated_(v10, v11, @"BasePassword", 0);
  v15 = objc_msgSend_tableManager(self, v12, v13, v14);
  objc_msgSend_deleteSectionWithIdentifier_animated_(v15, v16, @"DiskPassword", 0);
  v20 = objc_msgSend_tableManager(self, v17, v18, v19);
  objc_msgSend_deleteSectionWithIdentifier_animated_(v20, v21, @"DiskPasswordSwitch", 0);
  actionController = self->actionController;
  if (actionController && !objc_msgSend_isPrimaryRecommendation(actionController, v22, v23, v24))
  {
    v84 = objc_msgSend_tableManager(self, v22, v23, v24);

    objc_msgSend_deleteSectionWithIdentifier_animated_(v84, v85, @"SinglePassword", 0);
  }

  else
  {
    v26 = objc_msgSend_tableManager(self, v22, v23, v24);
    if (objc_msgSend_indexOfSectionWithIdentifier_(v26, v27, @"SinglePassword", v28) == 0x7FFFFFFFFFFFFFFFLL)
    {
      v32 = objc_msgSend_array(MEMORY[0x277CBEB18], v29, v30, v31);
      v36 = objc_msgSend_tableManager(self, v33, v34, v35);
      v37 = sub_23EB6CD3C(@"PasswordLabel", qword_27E383800);
      v41 = objc_msgSend_wifiPassword(self, v38, v39, v40);
      v42 = sub_23EB6CD3C(@"CreatePasswordPlaceholder", qword_27E383800);
      isSecure_keyboardType_withTag = objc_msgSend_createRowStyleBasicEditableWithImage_labelText_currentValue_placeholderText_isSecure_keyboardType_withTag_(v36, v43, 0, v37, v41, v42, 1, 1, 1464225889);
      v49 = sub_23EB5E230(1651716432, v45);
      if (v49)
      {
        objc_msgSend_setObject_forKey_(isSecure_keyboardType_withTag, v46, v49, @"nsFormatter");
      }

      v50 = objc_msgSend_tableManager(self, v46, v47, v48);
      objc_msgSend_setNewRow_verifierAccessoryType_(v50, v51, isSecure_keyboardType_withTag, 0);
      objc_msgSend_addObject_(v32, v52, isSecure_keyboardType_withTag, v53);
      v57 = objc_msgSend_tableManager(self, v54, v55, v56);
      v58 = sub_23EB6CD3C(@"VerifyLabel", qword_27E383800);
      v62 = objc_msgSend_wifiPasswordVerify(self, v59, v60, v61);
      v63 = sub_23EB6CD3C(@"VerifyPlaceholder", qword_27E383800);
      v65 = objc_msgSend_createRowStyleBasicEditableWithImage_labelText_currentValue_placeholderText_isSecure_keyboardType_withTag_(v57, v64, 0, v58, v62, v63, 1, 1, 1464225878);
      v69 = v65;
      if (v49)
      {
        objc_msgSend_setObject_forKey_(v65, v66, v49, @"nsFormatter");
      }

      v70 = objc_msgSend_tableManager(self, v66, v67, v68);
      objc_msgSend_setNewRow_verifierAccessoryType_(v70, v71, v69, 0);
      objc_msgSend_addObject_(v32, v72, v69, v73);
      v77 = objc_msgSend_tableManager(self, v74, v75, v76);
      v78 = MEMORY[0x277CBEB38];
      v79 = sub_23EB6CD3C(@"WiFiPasswordRequirement", qword_27E383800);
      v83 = objc_msgSend_dictionaryWithObjectsAndKeys_(v78, v80, v32, v81, @"sectionRows", v79, @"footer", @"SinglePassword", @"identifier", 0);

      objc_msgSend_addSectionInfo_animated_(v77, v82, v83, 0);
    }
  }
}

- (void)updateTableForMultiplePasswords
{
  v5 = objc_msgSend_tableManager(self, a2, v2, v3);
  objc_msgSend_deleteSectionWithIdentifier_animated_(v5, v6, @"WiFiPassword", 0);
  v10 = objc_msgSend_tableManager(self, v7, v8, v9);
  objc_msgSend_deleteSectionWithIdentifier_animated_(v10, v11, @"BasePassword", 0);
  v15 = objc_msgSend_tableManager(self, v12, v13, v14);
  objc_msgSend_deleteSectionWithIdentifier_animated_(v15, v16, @"BasePassword", 0);
  v20 = objc_msgSend_tableManager(self, v17, v18, v19);
  objc_msgSend_deleteSectionWithIdentifier_animated_(v20, v21, @"SinglePassword", 0);
  v25 = objc_msgSend_tableManager(self, v22, v23, v24);
  objc_msgSend_deleteSectionWithIdentifier_animated_(v25, v26, @"DiskPasswordSwitch", 0);
  if ((objc_msgSend_useDifferentDiskPassword(self, v27, v28, v29) & 1) == 0)
  {
    v33 = objc_msgSend_tableManager(self, v30, v31, v32);
    objc_msgSend_deleteSectionWithIdentifier_animated_(v33, v34, @"DiskPassword", 0);
  }

  actionController = self->actionController;
  if (!actionController || objc_msgSend_isPrimaryRecommendation(actionController, v30, v31, v32))
  {
    v36 = objc_msgSend_tableManager(self, v30, v31, v32);
    if (objc_msgSend_indexOfSectionWithIdentifier_(v36, v37, @"WiFiPassword", v38) == 0x7FFFFFFFFFFFFFFFLL)
    {
      v42 = objc_msgSend_array(MEMORY[0x277CBEB18], v39, v40, v41);
      v46 = objc_msgSend_tableManager(self, v43, v44, v45);
      v47 = sub_23EB6CD3C(@"PasswordLabel", qword_27E383800);
      v51 = objc_msgSend_wifiPassword(self, v48, v49, v50);
      v52 = sub_23EB6CD3C(@"CreatePasswordPlaceholder", qword_27E383800);
      isSecure_keyboardType_withTag = objc_msgSend_createRowStyleBasicEditableWithImage_labelText_currentValue_placeholderText_isSecure_keyboardType_withTag_(v46, v53, 0, v47, v51, v52, 1, 1, 1464225889);
      v59 = sub_23EB5E230(1651725131, v55);
      if (v59)
      {
        objc_msgSend_setObject_forKey_(isSecure_keyboardType_withTag, v56, v59, @"nsFormatter");
      }

      v60 = objc_msgSend_tableManager(self, v56, v57, v58);
      objc_msgSend_setNewRow_verifierAccessoryType_(v60, v61, isSecure_keyboardType_withTag, 0);
      objc_msgSend_addObject_(v42, v62, isSecure_keyboardType_withTag, v63);
      v67 = objc_msgSend_tableManager(self, v64, v65, v66);
      v68 = sub_23EB6CD3C(@"VerifyLabel", qword_27E383800);
      v72 = objc_msgSend_wifiPasswordVerify(self, v69, v70, v71);
      v73 = sub_23EB6CD3C(@"VerifyPlaceholder", qword_27E383800);
      v75 = objc_msgSend_createRowStyleBasicEditableWithImage_labelText_currentValue_placeholderText_isSecure_keyboardType_withTag_(v67, v74, 0, v68, v72, v73, 1, 1, 1464225878);
      v79 = v75;
      if (v59)
      {
        objc_msgSend_setObject_forKey_(v75, v76, v59, @"nsFormatter");
      }

      v80 = objc_msgSend_tableManager(self, v76, v77, v78);
      objc_msgSend_setNewRow_verifierAccessoryType_(v80, v81, v79, 0);
      objc_msgSend_addObject_(v42, v82, v79, v83);
      v87 = objc_msgSend_tableManager(self, v84, v85, v86);
      v88 = MEMORY[0x277CBEB38];
      v89 = sub_23EB6CD3C(@"WiFiPasswordSectionTitle", qword_27E383800);
      v90 = sub_23EB6CD3C(@"WiFiPasswordRequirement", qword_27E383800);
      v93 = objc_msgSend_dictionaryWithObjectsAndKeys_(v88, v91, v42, v92, @"sectionRows", v89, @"header", v90, @"footer", @"WiFiPassword", @"identifier", 0);
      objc_msgSend_addSectionInfo_animated_(v87, v94, v93, 0);
    }

    v95 = objc_msgSend_tableManager(self, v39, v40, v41);
    if (objc_msgSend_indexOfSectionWithIdentifier_(v95, v96, @"BasePassword", v97) == 0x7FFFFFFFFFFFFFFFLL)
    {
      v101 = objc_msgSend_array(MEMORY[0x277CBEB18], v98, v99, v100);
      v105 = objc_msgSend_tableManager(self, v102, v103, v104);
      v106 = sub_23EB6CD3C(@"PasswordLabel", qword_27E383800);
      v110 = objc_msgSend_basePassword(self, v107, v108, v109);
      v111 = sub_23EB6CD3C(@"CreatePasswordPlaceholder", qword_27E383800);
      v113 = objc_msgSend_createRowStyleBasicEditableWithImage_labelText_currentValue_placeholderText_isSecure_keyboardType_withTag_(v105, v112, 0, v106, v110, v111, 1, 1, 1113673825);
      v118 = sub_23EB5E230(1651721296, v114);
      if (v118)
      {
        objc_msgSend_setObject_forKey_(v113, v115, v118, @"nsFormatter");
      }

      v119 = objc_msgSend_tableManager(self, v115, v116, v117);
      objc_msgSend_setNewRow_verifierAccessoryType_(v119, v120, v113, 0);
      objc_msgSend_addObject_(v101, v121, v113, v122);
      v126 = objc_msgSend_tableManager(self, v123, v124, v125);
      v127 = sub_23EB6CD3C(@"VerifyLabel", qword_27E383800);
      v131 = objc_msgSend_basePasswordVerify(self, v128, v129, v130);
      v132 = sub_23EB6CD3C(@"VerifyPlaceholder", qword_27E383800);
      v134 = objc_msgSend_createRowStyleBasicEditableWithImage_labelText_currentValue_placeholderText_isSecure_keyboardType_withTag_(v126, v133, 0, v127, v131, v132, 1, 1, 1113673814);
      v138 = v134;
      if (v118)
      {
        objc_msgSend_setObject_forKey_(v134, v135, v118, @"nsFormatter");
      }

      v139 = objc_msgSend_tableManager(self, v135, v136, v137);
      objc_msgSend_setNewRow_verifierAccessoryType_(v139, v140, v138, 0);
      objc_msgSend_addObject_(v101, v141, v138, v142);
      v146 = objc_msgSend_tableManager(self, v143, v144, v145);
      v147 = MEMORY[0x277CBEB38];
      v148 = sub_23EB6CD3C(@"AdminPasswordSectionTitle", qword_27E383800);
      v151 = objc_msgSend_dictionaryWithObjectsAndKeys_(v147, v149, v101, v150, @"sectionRows", v148, @"header", @"BasePassword", @"identifier", 0);
      objc_msgSend_addSectionInfo_animated_(v146, v152, v151, 0);
    }

    if (objc_msgSend_hasDisk(self, v98, v99, v100))
    {
      v156 = objc_msgSend_tableManager(self, v153, v154, v155);
      if (objc_msgSend_indexOfSectionWithIdentifier_(v156, v157, @"DiskPasswordSwitch", v158) == 0x7FFFFFFFFFFFFFFFLL)
      {
        v162 = objc_msgSend_array(MEMORY[0x277CBEB18], v159, v160, v161);
        v163 = sub_23EB6CD3C(@"StepByStepChoice_Create_Config.UsingDifferentDiskPasswordLabel", qword_27E383800);
        v167 = objc_msgSend_tableManager(self, v164, v165, v166);
        v171 = objc_msgSend_useDifferentDiskPassword(self, v168, v169, v170);
        v173 = objc_msgSend_createRowStyleBasicOnOffWithImage_labelText_isOn_withTag_(v167, v172, 0, v163, v171, 1146114935);
        objc_msgSend_addObject_(v162, v174, v173, v175);
        v179 = objc_msgSend_tableManager(self, v176, v177, v178);
        v183 = objc_msgSend_dictionaryWithObjectsAndKeys_(MEMORY[0x277CBEB38], v180, v162, v181, @"sectionRows", @"DiskPasswordSwitch", @"identifier", 0);

        objc_msgSend_addSectionInfo_animated_(v179, v182, v183, 0);
      }
    }
  }
}

- (void)touchInCellAtIndexPath:(id)path
{
  if (self->actionController)
  {
    v6 = objc_msgSend_section(path, a2, path, v3);
    v10 = objc_msgSend_tableManager(self, v7, v8, v9);
    if (v6 == objc_msgSend_indexOfSectionWithIdentifier_(v10, v11, @"ActionTableSection", v12))
    {
      objc_msgSend_setupTable(self, v13, v14, v15);
      objc_msgSend_updateTable(self, v16, v17, v18);
      objc_msgSend_validateAndUpdateNextButton(self, v19, v20, v21);
      v25 = objc_msgSend_tableManager(self, v22, v23, v24);

      objc_msgSend_selectMenuCellAtIndexPath_(v25, v26, path, v27);
    }
  }
}

- (void)switchTouchedInCellAtIndexPath:(id)path forSwitchIndex:(unint64_t)index isOn:(BOOL)on
{
  onCopy = on;
  v23 = 0;
  v8 = objc_msgSend_tableManager(self, a2, path, index);
  if (objc_msgSend_tagOfCellAtIndexPath_tag_(v8, v9, path, &v23))
  {
    if (v23 == 1146114935)
    {
      objc_msgSend_setUseDifferentDiskPassword_(self, v10, onCopy, v12);
    }

    else if (v23 == 1397773175)
    {
      objc_msgSend_setUseSinglePassword_(self, v10, onCopy, v12);
      if (onCopy)
      {
        v13 = objc_msgSend_wifiPassword(self, v10, v11, v12);
        v17 = objc_msgSend_UTF8String(v13, v14, v15, v16);
        if (v17)
        {
          if (!sub_23EB6BC58(v17))
          {
            objc_msgSend_setWifiPassword_(self, v10, &stru_285145FE8, v12);
            objc_msgSend_setWifiPasswordVerify_(self, v18, &stru_285145FE8, v19);
          }
        }
      }
    }

    objc_msgSend_updateTable(self, v10, v11, v12);
    objc_msgSend_validateAndUpdateNextButton(self, v20, v21, v22);
  }
}

- (void)updateSinglePasswordSwitchExplanation:(BOOL)explanation
{
  explanationCopy = explanation;
  hasDisk = objc_msgSend_hasDisk(self, a2, explanation, v3);
  v9 = @"off";
  if (explanationCopy)
  {
    v9 = @"on";
  }

  if (hasDisk)
  {
    v10 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v7, @"SinglePasswordExplanationWithDisk.%@", v8, v9);
  }

  else
  {
    v10 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v7, @"SinglePasswordExplanation.%@", v8, v9);
  }

  v11 = sub_23EB6CD3C(v10, qword_27E383800);
  v15 = objc_msgSend_tableManager(self, v12, v13, v14);

  MEMORY[0x2821F9670](v15, sel_updateFooter_forSectionWithIdentifier_, v11, @"SinglePasswordSwitch");
}

- (void)setupInitialTableHeaderConfiguration
{
  v5 = MEMORY[0x277CBEA60];
  v6 = objc_msgSend_justTextContainerView(self, a2, v2, v3);
  v10 = objc_msgSend_topoView(self, v7, v8, v9);
  v13 = objc_msgSend_arrayWithObjects_(v5, v11, v6, v12, v10, 0);
  v17 = objc_msgSend_parentController(self, v14, v15, v16);
  v21 = objc_msgSend_tableHeaderContainerView(self, v18, v19, v20);
  objc_msgSend_replaceSubviewsInView_newSubviews_withAnimation_(v17, v22, v21, v13, 1);
  v26 = objc_msgSend_tableHeaderContainerView(self, v23, v24, v25);
  v30 = objc_msgSend_tableView(self, v27, v28, v29);

  objc_msgSend_setTableHeaderView_(v30, v31, v26, v32);
}

- (void)validateAndUpdateNextButton
{
  actionController = self->actionController;
  if (!actionController || objc_msgSend_isPrimaryRecommendation(actionController, a2, v2, v3))
  {
    if (!objc_msgSend_validateAndSetValues(self, a2, v2, v3))
    {
      v33 = 0;
      goto LABEL_10;
    }

    outResultsDict = self->super.super._outResultsDict;
    v9 = objc_msgSend_wifiName(self, a2, v6, v7);
    objc_msgSend_setValue_forKey_(outResultsDict, v10, v9, @"kSBSKey_NetworkName");
    v11 = self->super.super._outResultsDict;
    v15 = objc_msgSend_personalizedBaseName(self, v12, v13, v14);
    objc_msgSend_setValue_forKey_(v11, v16, v15, @"kSBSKey_BaseName");
    v17 = self->super.super._outResultsDict;
    v21 = objc_msgSend_wifiPassword(self, v18, v19, v20);
    objc_msgSend_setValue_forKey_(v17, v22, v21, @"kSBSKey_NetworkPassword");
    v26 = objc_msgSend_useSinglePassword(self, v23, v24, v25);
    v30 = self->super.super._outResultsDict;
    if (v26)
    {
      v31 = objc_msgSend_wifiPassword(self, v27, v28, v29);
      objc_msgSend_setValue_forKey_(v30, v32, v31, @"kSBSKey_BasePassword");
    }

    else
    {
      v34 = objc_msgSend_basePassword(self, v27, v28, v29);
      objc_msgSend_setValue_forKey_(v30, v35, v34, @"kSBSKey_BasePassword");
      if (objc_msgSend_useDifferentDiskPassword(self, v36, v37, v38))
      {
        v41 = self->super.super._outResultsDict;
        v42 = objc_msgSend_diskPassword(self, a2, v39, v40);
        objc_msgSend_setValue_forKey_(v41, v43, v42, @"kSBSKey_DiskSharing_Password");
      }
    }
  }

  v33 = 1;
LABEL_10:

  objc_msgSend_setRightNavigationButton_enable_hide_(self, a2, @"kNext", v33, 0);
}

- (void)setupTable
{
  if (!self->actionController)
  {
    goto LABEL_6;
  }

  v5 = objc_msgSend_tableManager(self, a2, v2, v3);
  v9 = objc_msgSend_sectionIdentifier(self->actionController, v6, v7, v8);
  if (objc_msgSend_indexOfSectionWithIdentifier_(v5, v10, v9, v11) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = objc_msgSend_tableManager(self, a2, v2, v3);
    actionController = self->actionController;
    v17 = sub_23EC13460(self, v14, v15, v16) != 1;
    SectionInfoWithLongStrings = objc_msgSend_getSectionInfoWithLongStrings_(actionController, v18, v17, v19);
    objc_msgSend_addSectionInfo_(v12, v21, SectionInfoWithLongStrings, v22);
  }

  v23 = self->actionController;
  if (v23 && !objc_msgSend_isPrimaryRecommendation(v23, a2, v2, v3))
  {
    v72 = objc_msgSend_tableManager(self, a2, v2, v3);
    objc_msgSend_deleteSectionWithIdentifier_animated_(v72, v73, @"WiFiName", 0);
  }

  else
  {
LABEL_6:
    v24 = objc_msgSend_tableManager(self, a2, v2, v3);
    if (objc_msgSend_indexOfSectionWithIdentifier_(v24, v25, @"WiFiName", v26) == 0x7FFFFFFFFFFFFFFFLL)
    {
      v30 = objc_msgSend_array(MEMORY[0x277CBEB18], v27, v28, v29);
      v34 = objc_msgSend_tableManager(self, v31, v32, v33);
      v35 = sub_23EB6CD3C(@"CustomWiFiName", qword_27E383800);
      v39 = objc_msgSend_wifiName(self, v36, v37, v38);
      v40 = sub_23EB6CD3C(@"CustomWiFiNamePlaceholder", qword_27E383800);
      isSecure_keyboardType_withTag = objc_msgSend_createRowStyleBasicEditableWithImage_labelText_currentValue_placeholderText_isSecure_keyboardType_withTag_(v34, v41, 0, v35, v39, v40, 0, 0, 1464225389);
      v44 = sub_23EB5E230(1651724878, v43);
      if (v44)
      {
        objc_msgSend_setObject_forKey_(isSecure_keyboardType_withTag, v45, v44, @"nsFormatter");
      }

      objc_msgSend_addObject_(v30, v45, isSecure_keyboardType_withTag, v46);
      v50 = objc_msgSend_tableManager(self, v47, v48, v49);
      v51 = sub_23EB6CD3C(@"CustomBaseName", qword_27E383800);
      v55 = objc_msgSend_personalizedBaseName(self, v52, v53, v54);
      v56 = sub_23EB6CD3C(@"CustomBaseNamePlaceholder", qword_27E383800);
      v58 = objc_msgSend_createRowStyleBasicEditableWithImage_labelText_currentValue_placeholderText_isSecure_keyboardType_withTag_(v50, v57, 0, v51, v55, v56, 0, 0, 1937329773);
      v60 = sub_23EB5E230(1937329773, v59);
      if (v60)
      {
        objc_msgSend_setObject_forKey_(v58, v61, v60, @"nsFormatter");
      }

      objc_msgSend_addObject_(v30, v61, v58, v62);
      v66 = objc_msgSend_tableManager(self, v63, v64, v65);
      v69 = objc_msgSend_dictionaryWithObjectsAndKeys_(MEMORY[0x277CBEB38], v67, v30, v68, @"sectionRows", @"WiFiName", @"identifier", 0);
      objc_msgSend_addSectionInfo_(v66, v70, v69, v71);
    }
  }

  v74 = self->actionController;
  v75 = objc_msgSend_tableManager(self, v27, v28, v29);
  if (v74)
  {

    objc_msgSend_deleteSectionWithIdentifier_animated_(v75, v76, @"SinglePasswordSwitch", 0);
  }

  else if (objc_msgSend_indexOfSectionWithIdentifier_(v75, v76, @"SinglePasswordSwitch", v77) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v81 = objc_msgSend_array(MEMORY[0x277CBEB18], v78, v79, v80);
    v85 = objc_msgSend_tableManager(self, v82, v83, v84);
    v86 = sub_23EB6CD3C(@"StepByStepChoice_Create_Config.UsingSinglePasswordLabel", qword_27E383800);
    v90 = objc_msgSend_useSinglePassword(self, v87, v88, v89);
    v92 = objc_msgSend_createRowStyleBasicOnOffWithImage_labelText_isOn_withTag_(v85, v91, 0, v86, v90, 1397773175);
    objc_msgSend_addObject_(v81, v93, v92, v94);
    v98 = objc_msgSend_tableManager(self, v95, v96, v97);
    v102 = objc_msgSend_dictionaryWithObjectsAndKeys_(MEMORY[0x277CBEB38], v99, v81, v100, @"sectionRows", @"SinglePasswordSwitch", @"identifier", 0);

    objc_msgSend_addSectionInfo_(v98, v101, v102, v103);
  }
}

- (void)updateTable
{
  v5 = objc_msgSend_useSinglePassword(self, a2, v2, v3);
  objc_msgSend_updateSinglePasswordSwitchExplanation_(self, v6, v5, v7);
  if (objc_msgSend_useSinglePassword(self, v8, v9, v10))
  {

    MEMORY[0x2821F9670](self, sel_updateTableForSinglePassword, v12, v13);
  }

  else
  {
    objc_msgSend_updateTableForMultiplePasswords(self, v11, v12, v13);
    if (objc_msgSend_useDifferentDiskPassword(self, v14, v15, v16))
    {

      MEMORY[0x2821F9670](self, sel_addDiskPasswordSection, v18, v19);
    }

    else
    {
      v20 = objc_msgSend_tableManager(self, v17, v18, v19);

      objc_msgSend_deleteSectionWithIdentifier_(v20, v21, @"DiskPassword", v22);
    }
  }
}

- (void)addDiskPasswordSection
{
  v5 = objc_msgSend_tableManager(self, a2, v2, v3);
  if (objc_msgSend_indexOfSectionWithIdentifier_(v5, v6, @"DiskPassword", v7) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = objc_msgSend_array(MEMORY[0x277CBEB18], v8, v9, v10);
    v15 = objc_msgSend_tableManager(self, v12, v13, v14);
    v16 = sub_23EB6CD3C(@"PasswordLabel", qword_27E383800);
    v20 = objc_msgSend_diskPassword(self, v17, v18, v19);
    v21 = sub_23EB6CD3C(@"CreatePasswordPlaceholder", qword_27E383800);
    isSecure_keyboardType_withTag = objc_msgSend_createRowStyleBasicEditableWithImage_labelText_currentValue_placeholderText_isSecure_keyboardType_withTag_(v15, v22, 0, v16, v20, v21, 1, 1, 1147752545);
    v28 = sub_23EB5E230(1718842224, v24);
    if (v28)
    {
      objc_msgSend_setObject_forKey_(isSecure_keyboardType_withTag, v25, v28, @"nsFormatter");
    }

    v29 = objc_msgSend_tableManager(self, v25, v26, v27);
    objc_msgSend_setNewRow_verifierAccessoryType_(v29, v30, isSecure_keyboardType_withTag, 0);
    objc_msgSend_addObject_(v11, v31, isSecure_keyboardType_withTag, v32);
    v36 = objc_msgSend_tableManager(self, v33, v34, v35);
    v37 = sub_23EB6CD3C(@"VerifyLabel", qword_27E383800);
    v41 = objc_msgSend_diskPasswordVerify(self, v38, v39, v40);
    v42 = sub_23EB6CD3C(@"VerifyPlaceholder", qword_27E383800);
    v44 = objc_msgSend_createRowStyleBasicEditableWithImage_labelText_currentValue_placeholderText_isSecure_keyboardType_withTag_(v36, v43, 0, v37, v41, v42, 1, 1, 1147752534);
    v48 = v44;
    if (v28)
    {
      objc_msgSend_setObject_forKey_(v44, v45, v28, @"nsFormatter");
    }

    v49 = objc_msgSend_tableManager(self, v45, v46, v47);
    objc_msgSend_setNewRow_verifierAccessoryType_(v49, v50, v48, 0);
    objc_msgSend_addObject_(v11, v51, v48, v52);
    v56 = objc_msgSend_tableManager(self, v53, v54, v55);
    v57 = MEMORY[0x277CBEB38];
    v58 = sub_23EB6CD3C(@"DiskPasswordSectionTitle", qword_27E383800);
    v62 = objc_msgSend_dictionaryWithObjectsAndKeys_(v57, v59, v11, v60, @"sectionRows", v58, @"header", @"DiskPassword", @"identifier", 0);

    objc_msgSend_addSectionInfo_animated_(v56, v61, v62, 0);
  }
}

@end