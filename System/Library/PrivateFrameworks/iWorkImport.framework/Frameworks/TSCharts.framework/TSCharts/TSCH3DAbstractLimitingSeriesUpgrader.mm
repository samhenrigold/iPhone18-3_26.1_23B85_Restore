@interface TSCH3DAbstractLimitingSeriesUpgrader
+ (BOOL)chartTypeUsesSeriesLimiting:(id)limiting;
+ (double)depthFactorForAdjustingNumberOfSeries:(unint64_t)series chartType:(id)type fromOldLimitingSeries:(unint64_t)limitingSeries toNewLimitingSeries:(unint64_t)newLimitingSeries;
+ (id)upgraderWithChartInfo:(id)info;
- ($6BF1DF173A55784CAE4B3BED4B6FCF3F)p_oldLayoutSettingsForSpice:(SEL)spice;
- ($6BF1DF173A55784CAE4B3BED4B6FCF3F)upgradedLayoutSettings;
- (TSCH3DAbstractLimitingSeriesUpgrader)initWithChartInfo:(id)info;
- (id)adjustedScaleFromLayoutSettings:(id *)settings toLayoutSettings:(id *)layoutSettings;
- (id)configuredSceneWithLayoutSettings:(id *)settings;
- (id)constantDepthInfoChartScaleForInfoChartScale:(id)scale;
- (unint64_t)numberOfSeries;
- (void)configureScene:(id)scene;
- (void)mutateInfoByAdjustingScaleFromLayoutSettings:(id *)settings toLayoutSettings:(id *)layoutSettings;
- (void)mutateInfoWithContainingViewport:(id)viewport scene:(id)scene;
- (void)mutateInfoWithMutations:(id)mutations;
- (void)upgradeForSpice:(BOOL)spice naturalSize:(CGSize)size;
@end

@implementation TSCH3DAbstractLimitingSeriesUpgrader

+ (BOOL)chartTypeUsesSeriesLimiting:(id)limiting
{
  limitingCopy = limiting;
  v9 = objc_msgSend_lineChart3D(TSCHChartType, v4, v5, v6, v7);
  if (v9 == limitingCopy)
  {
    v14 = 1;
  }

  else
  {
    v13 = objc_msgSend_areaChart3D(TSCHChartType, v8, v10, v11, v12);
    v14 = v13 == limitingCopy;
  }

  return v14;
}

+ (double)depthFactorForAdjustingNumberOfSeries:(unint64_t)series chartType:(id)type fromOldLimitingSeries:(unint64_t)limitingSeries toNewLimitingSeries:(unint64_t)newLimitingSeries
{
  typeCopy = type;
  v19 = 1.0;
  if (objc_msgSend_chartTypeUsesSeriesLimiting_(self, v11, v12, v13, v14, typeCopy))
  {
    if (!limitingSeries || !newLimitingSeries)
    {
      v20 = MEMORY[0x277D81150];
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "+[TSCH3DAbstractLimitingSeriesUpgrader depthFactorForAdjustingNumberOfSeries:chartType:fromOldLimitingSeries:toNewLimitingSeries:]");
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DAbstractLimitingSeriesUpgrader.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v27, v28, v29, v30, v21, v26, 41, 0, "invalid max limiting series count old %lu new %lu", limitingSeries, newLimitingSeries);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33, v34);
    }

    newLimitingSeriesCopy = newLimitingSeries;
    if (series <= newLimitingSeries)
    {
      seriesCopy = newLimitingSeries;
    }

    else
    {
      seriesCopy = series;
    }

    v37 = newLimitingSeriesCopy / seriesCopy;
    if (series <= limitingSeries)
    {
      seriesCopy2 = limitingSeries;
    }

    else
    {
      seriesCopy2 = series;
    }

    if (v37 == 0.0)
    {
      v39 = MEMORY[0x277D81150];
      v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, newLimitingSeriesCopy, seriesCopy, v18, "+[TSCH3DAbstractLimitingSeriesUpgrader depthFactorForAdjustingNumberOfSeries:chartType:fromOldLimitingSeries:toNewLimitingSeries:]");
      v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, v42, v43, v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DAbstractLimitingSeriesUpgrader.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v39, v46, v47, v48, v49, v40, v45, 44, 0, "invalid current factor %f", *&v37);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v50, v51, v52, v53);
    }

    v19 = limitingSeries / seriesCopy2 / v37;
  }

  return v19;
}

+ (id)upgraderWithChartInfo:(id)info
{
  infoCopy = info;
  v5 = [self alloc];
  v10 = objc_msgSend_initWithChartInfo_(v5, v6, v7, v8, v9, infoCopy);

  return v10;
}

- (TSCH3DAbstractLimitingSeriesUpgrader)initWithChartInfo:(id)info
{
  infoCopy = info;
  v27.receiver = self;
  v27.super_class = TSCH3DAbstractLimitingSeriesUpgrader;
  v7 = [(TSCH3DAbstractLimitingSeriesUpgrader *)&v27 init];
  if (v7)
  {
    if (!infoCopy)
    {
      v11 = MEMORY[0x277D81150];
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v8, v9, v10, "[TSCH3DAbstractLimitingSeriesUpgrader initWithChartInfo:]");
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DAbstractLimitingSeriesUpgrader.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 57, 0, "invalid nil value for '%{public}s'", "chartInfo");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
    }

    objc_storeStrong(&v7->_chartInfo, info);
  }

  return v7;
}

- ($6BF1DF173A55784CAE4B3BED4B6FCF3F)p_oldLayoutSettingsForSpice:(SEL)spice
{
  v4 = a4;
  *&retstr->var0 = 0;
  retstr->var8 = 0;
  retstr->var9 = 0;
  sub_27635FB94(retstr);
  retstr->var7 = 1;
  retstr->var8 = !v4;
  retstr->var9 = 8;
  return result;
}

- ($6BF1DF173A55784CAE4B3BED4B6FCF3F)upgradedLayoutSettings
{
  *&retstr->var0 = 0;
  retstr->var8 = 0;
  retstr->var9 = 0;
  sub_27635FB94(retstr);
  retstr->var7 = 1;
  return result;
}

- (void)configureScene:(id)scene
{
  sceneCopy = scene;
  if (!sceneCopy)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, v5, v6, v7, "[TSCH3DAbstractLimitingSeriesUpgrader configureScene:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DAbstractLimitingSeriesUpgrader.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v16, v17, v18, v9, v14, 82, 0, "invalid nil value for '%{public}s'", "scene");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  v27[0] = 0;
  v27[1] = 0;
  objc_msgSend_setLabelWrapBounds_forScene_(TSCH3DChartTitleSceneObject, v3, v5, v6, v7, v27, sceneCopy);
  objc_msgSend_setIsFixedPosition_forScene_(TSCH3DChartValueAxisTitleSceneObject, v23, v24, v25, v26, 1, sceneCopy);
}

- (id)configuredSceneWithLayoutSettings:(id *)settings
{
  v12 = *settings;
  v6 = objc_msgSend_sceneResetWithLayoutSettings_(self, a2, *&v12.var0, v3, v4, &v12);
  objc_msgSend_configureScene_(self, v7, v8, v9, v10, v6);

  return v6;
}

- (void)mutateInfoWithMutations:(id)mutations
{
  v17 = objc_msgSend_swapTuplesForMutations_forImport_(self->_chartInfo, a2, v3, v4, v5, mutations, 0);
  if (objc_msgSend_count(v17, v7, v8, v9, v10))
  {
    willModifyBlock = self->_willModifyBlock;
    if (willModifyBlock)
    {
      willModifyBlock[2]();
    }

    v16 = objc_msgSend_applyStyleSwapTuples_(self->_chartInfo, v11, v12, v13, v14, v17);
  }
}

- (id)constantDepthInfoChartScaleForInfoChartScale:(id)scale
{
  scaleCopy = scale;
  v9 = objc_msgSend_intValueForProperty_defaultValue_(self->_chartInfo, v5, v6, v7, v8, 1067, 0);
  v14 = objc_msgSend_chartType(self->_chartInfo, v10, v11, v12, v13);
  v19 = objc_msgSend_constantDepthInfoChartScaleForInfoChartScale_chartType_barShape_(TSCHChartType, v15, v16, v17, v18, scaleCopy, v14, v9);

  return v19;
}

- (void)mutateInfoWithContainingViewport:(id)viewport scene:(id)scene
{
  v65[2] = *MEMORY[0x277D85DE8];
  viewportCopy = viewport;
  sceneCopy = scene;
  if (!viewportCopy)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v9, v10, v11, "[TSCH3DAbstractLimitingSeriesUpgrader mutateInfoWithContainingViewport:scene:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DAbstractLimitingSeriesUpgrader.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 115, 0, "invalid nil value for '%{public}s'", "containingViewport");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  if (!sceneCopy)
  {
    v27 = MEMORY[0x277D81150];
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v9, v10, v11, "[TSCH3DAbstractLimitingSeriesUpgrader mutateInfoWithContainingViewport:scene:]");
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, v30, v31, v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DAbstractLimitingSeriesUpgrader.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v34, v35, v36, v37, v28, v33, 116, 0, "invalid nil value for '%{public}s'", "scene");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39, v40, v41);
  }

  v42 = objc_msgSend_nonNilAccessorWithScene_(TSCH3DChartScenePropertyAccessor, v7, v9, v10, v11, sceneCopy);
  v47 = v42;
  if (v42)
  {
    objc_msgSend_infoChartScale(v42, v44, v45, v46);
  }

  else
  {
    v63[0] = 0;
    v63[1] = 0;
  }

  v48 = objc_msgSend_vectorWithVec4_(TSCH3DVector, v43, v44, v45, v46, v63);
  v53 = objc_msgSend_constantDepthInfoChartScaleForInfoChartScale_(self, v49, v50, v51, v52, v48);
  v64[0] = &unk_28856E900;
  v64[1] = &unk_28856E918;
  v65[0] = v53;
  v65[1] = viewportCopy;
  v58 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v54, v55, v56, v57, v65, v64, 2);
  objc_msgSend_mutateInfoWithMutations_(self, v59, v60, v61, v62, v58);
}

- (unint64_t)numberOfSeries
{
  v6 = objc_msgSend_model(self->_chartInfo, a2, v2, v3, v4);
  if (!v6)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v7, v8, v9, "[TSCH3DAbstractLimitingSeriesUpgrader numberOfSeries]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DAbstractLimitingSeriesUpgrader.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 130, 0, "invalid nil value for '%{public}s'", "model");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  v25 = objc_msgSend_numberOfSeries(v6, v5, v7, v8, v9);

  return v25;
}

- (id)adjustedScaleFromLayoutSettings:(id *)settings toLayoutSettings:(id *)layoutSettings
{
  v7 = objc_opt_class();
  v12 = objc_msgSend_numberOfSeries(self, v8, v9, v10, v11);
  v17 = objc_msgSend_chartType(self->_chartInfo, v13, v14, v15, v16);
  objc_msgSend_depthFactorForAdjustingNumberOfSeries_chartType_fromOldLimitingSeries_toNewLimitingSeries_(v7, v18, v19, v20, v21, v12, v17, settings->var9, layoutSettings->var9);
  v23 = v22;

  v28 = objc_msgSend_objectValueForProperty_(self->_chartInfo, v24, v25, v26, v27, 1073);
  v32 = v28;
  if (v28)
  {
    objc_msgSend_value4(v28, v29, v30, v31);
  }

  else
  {
    v44 = 0uLL;
  }

  sub_2763853A4(v32, &v44, &v45);
  v33 = v23 * *(&v45 + 2);
  *&v33 = v33;
  DWORD2(v45) = LODWORD(v33);
  v37 = objc_msgSend_vectorWithVec4_(TSCH3DVector, v34, v33, v35, v36, &v45);
  v42 = objc_msgSend_constantDepthInfoChartScaleForInfoChartScale_(self, v38, v39, v40, v41, v37);

  return v42;
}

- (void)mutateInfoByAdjustingScaleFromLayoutSettings:(id *)settings toLayoutSettings:(id *)layoutSettings
{
  v24[1] = *MEMORY[0x277D85DE8];
  v8 = objc_msgSend_adjustedScaleFromLayoutSettings_toLayoutSettings_(self, a2, v4, v5, v6, settings, layoutSettings);
  v23 = &unk_28856E900;
  v13 = objc_msgSend_copy(v8, v9, v10, v11, v12);
  v24[0] = v13;
  v18 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v14, v15, v16, v17, v24, &v23, 1);

  objc_msgSend_mutateInfoWithMutations_(self, v19, v20, v21, v22, v18);
}

- (void)upgradeForSpice:(BOOL)spice naturalSize:(CGSize)size
{
  if (spice)
  {
    height = size.height;
    width = size.width;
    v135 = 0uLL;
    v136 = 0;
    objc_msgSend_p_oldLayoutSettingsForSpice_(self, size.width, size.height, v4, a2, 1);
    v133 = 0uLL;
    v134 = 0;
    objc_msgSend_upgradedLayoutSettings(self, v8, v9, v10);
    v131 = v135;
    v132 = v136;
    v14 = objc_msgSend_configuredSceneWithLayoutSettings_(self, v11, *&v135, v12, v13, &v131);
    objc_msgSend_oldResizingFrame(self, v15, v16, v17, v18);
    v20 = v19;
    v22 = v21;
    v24 = objc_msgSend_containingViewportByResizingScene_toResizingFrame_(self, v23, v19, v21, width, v14, height);
    objc_msgSend_mutateInfoWithContainingViewport_scene_(self, v25, v26, v27, v28, v24, v14);
    v33 = objc_msgSend_chartType(self->_chartInfo, v29, v30, v31, v32);
    v38 = objc_msgSend_lineChart3D(TSCHChartType, v34, v35, v36, v37);
    v43 = v38;
    if (v33 == v38)
    {
    }

    else
    {
      v44 = objc_msgSend_chartType(self->_chartInfo, v39, v40, v41, v42);
      v49 = objc_msgSend_areaChart3D(TSCHChartType, v45, v46, v47, v48);

      if (v44 != v49)
      {
        goto LABEL_18;
      }
    }

    v115 = objc_msgSend_numberOfSeries(self, v50, v51, v52, v53);
    v120 = v134;
    if (v134 >= v136)
    {
      v120 = v136;
    }

    if (v115 > v120)
    {
      objc_msgSend_mutateInfoByAdjustingScaleFromLayoutSettings_toLayoutSettings_(self, v116, v117, v118, v119, &v135, &v133);
      v131 = v133;
      v132 = v134;
      v124 = objc_msgSend_configuredSceneWithLayoutSettings_(self, v121, *&v133, v122, v123, &v131);

      v126 = objc_msgSend_containingViewportByResizingScene_toResizingFrame_(self, v125, v20, v22, width, v124, height);

      v24 = v126;
      objc_msgSend_mutateInfoWithContainingViewport_scene_(self, v127, v128, v129, v130, v126, v124);
LABEL_19:

      return;
    }

LABEL_18:
    v124 = v14;
    goto LABEL_19;
  }

  v135 = 0uLL;
  v136 = 0;
  objc_msgSend_oldLayoutSettings(self, size.width, size.height, v4, a2);
  v133 = 0uLL;
  v134 = 0;
  objc_msgSend_upgradedLayoutSettings(self, v54, v55, v56);
  objc_msgSend_oldLayoutSettings(self, v57, v58, v59);
  v64 = objc_msgSend_configuredSceneWithLayoutSettings_(self, v60, v61, v62, v63, &v131);
  v69 = objc_msgSend_chartType(self->_chartInfo, v65, v66, v67, v68);
  v74 = objc_msgSend_lineChart3D(TSCHChartType, v70, v71, v72, v73);
  v79 = v74;
  if (v69 == v74)
  {
  }

  else
  {
    v80 = objc_msgSend_chartType(self->_chartInfo, v75, v76, v77, v78);
    v85 = objc_msgSend_areaChart3D(TSCHChartType, v81, v82, v83, v84);

    if (v80 != v85)
    {
      return;
    }
  }

  v90 = objc_msgSend_numberOfSeries(self, v86, v87, v88, v89);
  v95 = v134;
  if (v134 >= v136)
  {
    v95 = v136;
  }

  if (v90 > v95)
  {
    objc_msgSend_oldResizingFrame(self, v91, v92, v93, v94);
    v97 = v96;
    v99 = v98;
    v101 = v100;
    v103 = v102;
    objc_msgSend_mutateInfoByAdjustingScaleFromLayoutSettings_toLayoutSettings_(self, v104, v96, v98, v100, &v135, &v133);
    v131 = v133;
    v132 = v134;
    v108 = objc_msgSend_configuredSceneWithLayoutSettings_(self, v105, *&v133, v106, v107, &v131);
    v110 = objc_msgSend_containingViewportByResizingScene_toResizingFrame_(self, v109, v97, v99, v101, v108, v103);
    objc_msgSend_mutateInfoWithContainingViewport_scene_(self, v111, v112, v113, v114, v110, v108);
  }
}

@end