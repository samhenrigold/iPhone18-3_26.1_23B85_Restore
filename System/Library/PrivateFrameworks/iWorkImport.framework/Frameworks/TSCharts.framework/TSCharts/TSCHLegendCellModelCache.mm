@interface TSCHLegendCellModelCache
- (CGRect)badgeFillFrame;
- (CGRect)badgeFrame;
- (CGRect)labelFrame;
- (CGSize)size;
- (TSCHLegendCellModelCache)initWithChartModel:(id)model cellType:(int)type seriesIndex:(unint64_t)index withMetrics:(id)metrics overrideLabel:(id)label styleProvidingSource:(id)source;
- (id)fill;
- (id)symbolFill;
@end

@implementation TSCHLegendCellModelCache

- (TSCHLegendCellModelCache)initWithChartModel:(id)model cellType:(int)type seriesIndex:(unint64_t)index withMetrics:(id)metrics overrideLabel:(id)label styleProvidingSource:(id)source
{
  modelCopy = model;
  metricsCopy = metrics;
  labelCopy = label;
  sourceCopy = source;
  v22 = objc_msgSend_chartInfo(modelCopy, v17, v18, v19, v20);
  if (v22)
  {
    if (metricsCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v93 = MEMORY[0x277D81150];
    v94 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, v23, v24, v25, "[TSCHLegendCellModelCache initWithChartModel:cellType:seriesIndex:withMetrics:overrideLabel:styleProvidingSource:]");
    v99 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v95, v96, v97, v98, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHLegendModelCache.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v93, v100, v101, v102, v103, v94, v99, 294, 0, "invalid nil value for '%{public}s'", "chartInfo");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v104, v105, v106, v107);
    if (metricsCopy)
    {
      goto LABEL_3;
    }
  }

  v108 = MEMORY[0x277D81150];
  v109 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, v23, v24, v25, "[TSCHLegendCellModelCache initWithChartModel:cellType:seriesIndex:withMetrics:overrideLabel:styleProvidingSource:]");
  v114 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v110, v111, v112, v113, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHLegendModelCache.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v108, v115, v116, v117, v118, v109, v114, 295, 0, "invalid nil value for '%{public}s'", "metrics");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v119, v120, v121, v122);
LABEL_3:
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    v26 = 0;
  }

  else
  {
    v26 = objc_msgSend_seriesAtIndex_(modelCopy, v21, v23, v24, v25, index);
  }

  selfCopy = 0;
  if (metricsCopy && v22)
  {
    v290.receiver = self;
    v290.super_class = TSCHLegendCellModelCache;
    v28 = [(TSCHLegendCellModelCache *)&v290 init];
    v29 = v28;
    if (!v28)
    {
LABEL_69:
      self = v29;
      selfCopy = self;
      goto LABEL_70;
    }

    v287 = v22;
    v28->_legendCellType = type;
    v28->_seriesIndex = index;
    objc_storeStrong(&v28->_series, v26);
    v34 = objc_msgSend_seriesType(v26, v30, v31, v32, v33);
    v29->_badgeType = objc_msgSend_legendBadgeType(v34, v35, v36, v37, v38);

    objc_msgSend_badgeSize(metricsCopy, v39, v40, v41, v42);
    v44 = *&v43;
    objc_msgSend_badgeSize(metricsCopy, v45, v43, v46, v47);
    v49 = *&v48;
    v53 = objc_msgSend_seriesType(v29->_series, v50, v48, v51, v52);
    v54 = v29->_series;
    LODWORD(v34) = objc_msgSend_intValueForProperty_defaultValue_(v54, v55, v56, v57, v58, 1179, 0);
    v64 = objc_msgSend_defaultSymbolType(v53, v59, v60, v61, v62);
    if (v34)
    {
      LODWORD(v64) = objc_msgSend_intValueForProperty_defaultValue_(v54, v63, v65, v66, v67, 1190, v64);
    }

    v68 = v44;

    v29->_symbolType = v64;
    legendCellType = v29->_legendCellType;
    if (legendCellType)
    {
      v289 = 0;
      goto LABEL_13;
    }

    badgeType = v29->_badgeType;
    if ((badgeType | 4) != 6)
    {
      v289 = 0;
LABEL_31:
      if (badgeType == 1)
      {
        v156 = objc_msgSend_seriesType(v26, v69, v70, v71, v72);
        v161 = objc_msgSend_supportsLineConnectionStyle(v156, v157, v158, v159, v160);
      }

      else
      {
        v161 = 0;
      }

      v162 = objc_msgSend_intValueForProperty_defaultValue_(v29->_series, v69, v70, v71, v72, 1176, v161);
      if (v162)
      {
        v162 = objc_msgSend_intValueForProperty_defaultValue_(v29->_series, v163, v164, v165, v166, 1165, 0);
      }

      v29->_lineType = v162;
      v167 = objc_msgSend_seriesType(v29->_series, v163, v164, v165, v166);
      v172 = objc_msgSend_legendStrokeForSeries_(v167, v168, v169, v170, v171, v29->_series);
      v177 = objc_msgSend_mutableCopy(v172, v173, v174, v175, v176);

      v180 = 4.5;
      v181 = 5.5;
      if (v29->_badgeType == 1)
      {
        v182 = 5.5;
      }

      else
      {
        v182 = 4.5;
      }

      if (v177)
      {
        if (objc_msgSend_shouldRender(v177, v178, 4.5, 5.5, v179))
        {
          v183 = v68 / v182;
          v184 = fmax(v68 / v182, 1.0);
          objc_msgSend_width(v177, v178, v183, 1.0, v179);
          if (v180 > v184)
          {
            objc_msgSend_setWidth_(v177, v178, v184, v181, v179);
          }
        }
      }

      if (v289)
      {
        objc_msgSend_width(v177, v178, v180, v181, v179);
        objc_msgSend_setWidth_(v177, v186, v185 + v185, v187, v188);
      }

      objc_storeStrong(&v29->_stroke, v177);
      shouldRender = objc_msgSend_shouldRender(v29->_stroke, v189, v190, v191, v192);
      v197 = 0.0;
      if (shouldRender)
      {
        objc_msgSend_width(v29->_stroke, v194, 0.0, v195, v196);
      }

      v29->_effectiveStrokeWidth = v197;

      v202 = objc_msgSend_objectValueForProperty_(v29->_series, v198, v199, v200, v201, 1189);
      v207 = objc_msgSend_mutableCopy(v202, v203, v204, v205, v206);

      if (v29->_badgeType == 1)
      {
        v210 = 5.5;
      }

      else
      {
        v210 = 4.5;
      }

      if (v207)
      {
        if (objc_msgSend_shouldRender(v207, v208, 4.5, 5.5, v209))
        {
          v213 = v68 / v210;
          v214 = fmax(v68 / v210, 1.0);
          objc_msgSend_width(v207, v211, v213, 1.0, v212);
          if (v218 > v214)
          {
            objc_msgSend_setWidth_(v207, v215, v214, v216, v217);
          }
        }
      }

      objc_storeStrong(&v29->_symbolStroke, v207);
      v223 = objc_msgSend_shouldRender(v29->_symbolStroke, v219, v220, v221, v222);
      v227 = 0.0;
      if (v223)
      {
        objc_msgSend_width(v29->_symbolStroke, v224, 0.0, v225, v226);
      }

      v29->_effectiveSymbolStrokeWidth = v227;

      v232 = objc_msgSend_name(v29->_series, v228, v229, v230, v231);
      v237 = objc_msgSend_copy(v232, v233, v234, v235, v236);
      labelString = v29->_labelString;
      v29->_labelString = v237;

      goto LABEL_57;
    }

    if (v64)
    {
      v289 = 0;
    }

    else
    {
      if (badgeType == 6)
      {
        v155 = objc_msgSend_fill(v29, v69, v70, v71, v72);
        v289 = v155 != 0;

        legendCellType = v29->_legendCellType;
LABEL_13:
        if (legendCellType == 1)
        {
          v29->_badgeType = 1;
          v124 = objc_msgSend_trendLineLegendText(v29->_series, v69, v70, v71, v72);
          v129 = objc_msgSend_copy(v124, v125, v126, v127, v128);
          v130 = v29->_labelString;
          v29->_labelString = v129;

          v135 = objc_msgSend_objectValueForProperty_(v29->_series, v131, v132, v133, v134, 1202);
          v140 = objc_msgSend_color(v135, v136, v137, v138);
          if (!v140)
          {
            v140 = objc_msgSend_clearColor(MEMORY[0x277D81180], v139, v141, v142, v143);
          }

          v144 = objc_msgSend_strokeWithColor_width_(MEMORY[0x277D803C0], v139, 2.0, v142, v143, v140);
          stroke = v29->_stroke;
          v29->_stroke = v144;

          symbolStroke = v29->_symbolStroke;
          v29->_symbolStroke = 0;

          *&v29->_symbolType = 0x100000000;
          v150 = objc_msgSend_shouldRender(v29->_stroke, v147, COERCE_DOUBLE(0x100000000), v148, v149);
          v154 = 0.0;
          if (v150)
          {
            objc_msgSend_width(v29->_stroke, v151, 0.0, v152, v153);
          }

          v29->_effectiveStrokeWidth = v154;
          v29->_effectiveSymbolStrokeWidth = 0.0;

          goto LABEL_57;
        }

        if (legendCellType)
        {
          v74 = MEMORY[0x277D81150];
          v75 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v69, v70, v71, v72, "[TSCHLegendCellModelCache initWithChartModel:cellType:seriesIndex:withMetrics:overrideLabel:styleProvidingSource:]");
          v80 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v76, v77, v78, v79, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHLegendModelCache.m");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v74, v81, v82, v83, v84, v75, v80, 394, 0, "Unknown TSCHLegendCellType");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v85, v86, v87, v88);
LABEL_57:
          if (labelCopy)
          {
            v239 = objc_msgSend_copy(labelCopy, v89, v90, v91, v92);
            v240 = v29->_labelString;
            v29->_labelString = v239;
          }

          v241 = v49;
          v242 = objc_msgSend_length(v29->_labelString, v89, v90, v91, v92);
          v248 = objc_msgSend_sharedText(TSCHText, v243, v244, v245, v246);
          if (v242)
          {
            v252 = v29->_labelString;
            v253 = objc_msgSend_paragraphStyle(metricsCopy, v247, v249, v250, v251);
            objc_msgSend_measureText_paragraphStyle_wrapWidth_checkNumberTemplates_layoutProperties_styleProvidingSource_outErasableFrame_outTextLayoutResults_(v248, v254, 0.0, v255, v256, v252, v253, 1, 0, sourceCopy, 0, 0);
            v258 = v257;
            v260 = v259;
          }

          else
          {
            v261 = objc_msgSend_paragraphStyle(metricsCopy, v247, v249, v250, v251);
            v258 = 0.0;
            objc_msgSend_measureText_paragraphStyle_wrapWidth_checkNumberTemplates_layoutProperties_styleProvidingSource_outErasableFrame_outTextLayoutResults_(v248, v262, 0.0, v263, v264, @" ", v261, 1, 0, sourceCopy, 0, 0);
            v260 = v265;
          }

          objc_msgSend_symbolGap(metricsCopy, v266, v267, v268, v269);
          if (v260 <= v241)
          {
            v271 = v241;
          }

          else
          {
            v271 = v260;
          }

          v29->_cellSize.width = v258 + v68 + v270;
          v29->_cellSize.height = v271;
          TSURectWithCenterAndSize();
          v273 = v272;
          v275 = v274;
          v29->_badgeFrame.origin.x = v276;
          v29->_badgeFrame.origin.y = v277;
          v29->_badgeFrame.size.width = v272;
          v29->_badgeFrame.size.height = v274;
          TSURectWithCenterAndSize();
          v29->_labelFrame.origin.x = v278;
          v29->_labelFrame.origin.y = v279;
          v29->_labelFrame.size.width = v280;
          v29->_labelFrame.size.height = v281;
          v22 = v287;
          if (v289)
          {
            TSURectWithSize();
            v273 = v285;
          }

          else
          {
            v283 = v275 * 0.5;
            v282 = 0.0;
            v284 = v275 * 0.5;
          }

          v29->_badgeFillFrame.origin.x = v282;
          v29->_badgeFillFrame.origin.y = v283;
          v29->_badgeFillFrame.size.width = v273;
          v29->_badgeFillFrame.size.height = v284;

          goto LABEL_69;
        }

        goto LABEL_30;
      }

      v289 = 1;
    }

LABEL_30:
    badgeType = v29->_badgeType;
    goto LABEL_31;
  }

LABEL_70:

  return selfCopy;
}

- (id)fill
{
  if (self->_legendCellType == 1 || self->_badgeType == 1)
  {
    v6 = 0;
  }

  else
  {
    v7 = objc_msgSend_seriesType(self->_series, a2, v2, v3, v4);
    v6 = objc_msgSend_legendFillForSeries_(v7, v8, v9, v10, v11, self->_series);
  }

  return v6;
}

- (id)symbolFill
{
  if (self->_legendCellType == 1)
  {
    v5 = 0;
    goto LABEL_10;
  }

  v7 = objc_msgSend_intValueForProperty_defaultValue_(self->_series, a2, v2, v3, v4, 1186, 0);
  v12 = objc_msgSend_intValueForProperty_defaultValue_(self->_series, v8, v9, v10, v11, 1187, 0);
  if (v7)
  {
    v5 = objc_msgSend_fill(self, v13, v14, v15, v16);
    if (v5)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (!v12 || !self->_stroke || (v17 = objc_alloc(MEMORY[0x277D801F8]), objc_msgSend_stroke(self, v18, v19, v20, v21), v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend_color(v22, v23, v24, v25), v26 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend_initWithColor_(v17, v27, v28, v29, v30, v26), v26, v22, !v5))
  {
LABEL_9:
    v5 = objc_msgSend_objectValueForProperty_(self->_series, v13, v14, v15, v16, 1185);
  }

LABEL_10:

  return v5;
}

- (CGSize)size
{
  objc_copyStruct(v4, &self->_cellSize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGRect)badgeFrame
{
  objc_copyStruct(v6, &self->_badgeFrame, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)badgeFillFrame
{
  objc_copyStruct(v6, &self->_badgeFillFrame, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)labelFrame
{
  objc_copyStruct(v6, &self->_labelFrame, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end