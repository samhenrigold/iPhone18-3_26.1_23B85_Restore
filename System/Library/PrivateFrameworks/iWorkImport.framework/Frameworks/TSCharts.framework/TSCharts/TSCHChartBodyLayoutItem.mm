@interface TSCHChartBodyLayoutItem
- (BOOL)layoutSpacePointIsInChartBody:(CGPoint)body;
- (CGPath)newDragAndDropHighlightPathForSelection:(id)selection;
- (CGRect)calcDrawingRect;
- (CGRect)calcOverhangRect;
- (CGRect)p_calcDrawingRectForModel:(id)model;
- (CGRect)p_calcDrawingRectForReferenceLinesForModel:(id)model;
- (CGRect)p_exactLabelsDrawingRectForSeries:(id)series;
- (CGRect)p_exactSummaryLabelsDrawingRectForSeries:(id)series;
- (TSCHChartBodyLayoutItem)initWithParent:(id)parent;
- (id)p_errorBarSubselectionKnobsForSeries:(id)series axisID:(id)d;
- (id)p_refLineSubselectionKnobsForStyleSwapIndex:(unint64_t)index;
- (id)p_trendLineEquationSubselectionKnobsForSeries:(id)series;
- (id)p_trendLineR2SubselectionKnobsForSeries:(id)series;
- (id)p_trendLineSubselectionKnobsForSeries:(id)series;
- (id)p_valueLabelSubselectionKnobsForSeries:(id)series;
- (id)p_valueSummaryLabelSubselectionKnobs;
- (id)renderersWithRep:(id)rep;
- (id)subselectionKnobPositionsForSelection:(id)selection;
- (unint64_t)countOfElementsForModel:(id)model series:(id)series forGroupsBySeries:(id)bySeries outNewElementBounds:(CGRect *)bounds outNewClipRects:(CGRect *)rects outNewElementPaths:(const CGPath *)paths;
- (void)iterateHitChartElements:(CGPoint)elements withBlock:(id)block;
- (void)layoutOutward;
- (void)p_addRendererOfClass:(Class)class andRep:(id)rep toArray:(id)array;
- (void)p_nudgeBarElementFrame:(CGRect *)frame usingBarModelCache:(id)cache unitSpaceValueBegin:(double)begin unitSpaceValueEnd:(double)end;
@end

@implementation TSCHChartBodyLayoutItem

- (TSCHChartBodyLayoutItem)initWithParent:(id)parent
{
  v38 = *MEMORY[0x277D85DE8];
  v36.receiver = self;
  v36.super_class = TSCHChartBodyLayoutItem;
  v3 = [(TSCHChartLayoutItem *)&v36 initWithParent:parent];
  v7 = v3;
  if (v3)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v8 = objc_msgSend_model(v3, v4, 0.0, v5, v6, 0);
    v13 = objc_msgSend_axisList(v8, v9, v10, v11, v12);

    v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, v15, v16, v17, &v32, v37, 16);
    if (v19)
    {
      v23 = *v33;
      while (2)
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v33 != v23)
          {
            objc_enumerationMutation(v13);
          }

          v25 = *(*(&v32 + 1) + 8 * i);
          if ((objc_msgSend_isCategory(v25, v18, v20, v21, v22) & 1) == 0)
          {
            v26 = objc_msgSend_axisID(v25, v18, v20, v21, v22);
            v7->_vertical = objc_msgSend_type(v26, v27, v28, v29, v30) == 2;

            goto LABEL_12;
          }
        }

        v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v18, v20, v21, v22, &v32, v37, 16);
        if (v19)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  return v7;
}

- (CGRect)calcDrawingRect
{
  v46 = 0;
  v47 = &v46;
  v48 = 0x5012000000;
  v49 = sub_27627B0C4;
  v50 = nullsub_7;
  v51 = &unk_27657B92B;
  v3 = *(MEMORY[0x277CBF398] + 16);
  v52 = *MEMORY[0x277CBF398];
  v53 = v3;
  v38 = 0;
  v39 = &v38;
  v40 = 0x5012000000;
  v41 = sub_27627B0C4;
  v42 = nullsub_7;
  v43 = &unk_27657B92B;
  v4 = *(MEMORY[0x277CBF398] + 16);
  v44 = *MEMORY[0x277CBF398];
  v45 = v4;
  v5 = objc_msgSend_model(self, a2, *&v44, *&v4, *&v3);
  if (objc_msgSend_isMultiData(v5, v6, v7, v8, v9))
  {
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = sub_27627B0D4;
    v37[3] = &unk_27A6B7248;
    v37[4] = self;
    v37[5] = &v46;
    v37[6] = &v38;
    objc_msgSend_enumerateMultiDataModelsUsingBlock_(v5, v10, COERCE_DOUBLE(3221225472), v12, v13, v37);
    v14 = v39[6];
    v15 = v39[7];
    v16 = v39[8];
    v17 = v39[9];
  }

  else
  {
    objc_msgSend_p_calcDrawingRectForModel_(self, v10, v11, v12, v13, v5);
    v18 = v47;
    *(v47 + 6) = v19;
    v18[7] = v20;
    v18[8] = v21;
    *(v18 + 9) = v22;
    objc_msgSend_p_calcDrawingRectForReferenceLinesForModel_(self, v23, v19, v20, v21, v5);
    v14 = v24;
    v15 = v25;
    v16 = v26;
    v17 = v27;
    v28 = v39;
    v39[6] = v24;
    v28[7] = v25;
    v28[8] = v26;
    v28[9] = v27;
  }

  v54 = CGRectUnion(*(v47 + 6), *&v14);
  x = v54.origin.x;
  y = v54.origin.y;
  width = v54.size.width;
  height = v54.size.height;
  *(v47 + 6) = v54;

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v46, 8);
  v33 = x;
  v34 = y;
  v35 = width;
  v36 = height;
  result.size.height = v36;
  result.size.width = v35;
  result.origin.y = v34;
  result.origin.x = v33;
  return result;
}

- (CGRect)p_calcDrawingRectForReferenceLinesForModel:(id)model
{
  modelCopy = model;
  objc_msgSend_rootedLayoutRect(self, v5, v6, v7, v8);
  v10 = v9;
  v12 = v11;
  width = v13;
  height = v15;
  if (objc_msgSend_numberOfSeries(modelCopy, v17, v9, v11, v13))
  {
    v22 = objc_msgSend_seriesAtIndex_(modelCopy, v18, v19, v20, v21, 0);
    v27 = objc_msgSend_seriesType(v22, v23, v24, v25, v26);
  }

  else
  {
    v22 = objc_msgSend_chartInfo(self, v18, v19, v20, v21);
    v32 = objc_msgSend_chartType(v22, v28, v29, v30, v31);
    v27 = objc_msgSend_defaultSeriesType_(v32, v33, v34, v35, v36, 0);
  }

  v41 = objc_msgSend_elementBuilder(v27, v37, v38, v39, v40);
  v42 = *(MEMORY[0x277CBF398] + 16);
  v53.origin = *MEMORY[0x277CBF398];
  v53.size = v42;
  if (objc_msgSend_countOfReferenceLinesForAxisID_model_forBodyLayout_outClipRect_outNewClipRects_outNewLineDescriptors_outReferenceLines_includeOutsideChartBodyBounds_outOutsideChartBodyBounds_(v41, v43, v53.origin.x, v42.width, v44, 0, modelCopy, self, &v53, 0, 0, 0, 0, 0) && !CGRectIsNull(v53))
  {
    v54.origin.x = v10;
    v54.origin.y = v12;
    v54.size.width = width;
    v54.size.height = height;
    v55 = CGRectUnion(v54, v53);
    width = v55.size.width;
    height = v55.size.height;
  }

  TSUSubtractPoints();
  v46 = v45;
  v48 = v47;

  v49 = v46;
  v50 = v48;
  v51 = width;
  v52 = height;
  result.size.height = v52;
  result.size.width = v51;
  result.origin.y = v50;
  result.origin.x = v49;
  return result;
}

- (CGRect)p_exactLabelsDrawingRectForSeries:(id)series
{
  seriesCopy = series;
  objc_msgSend_rootedLayoutRect(self, v5, v6, v7, v8);
  x = *MEMORY[0x277CBF398];
  y = *(MEMORY[0x277CBF398] + 8);
  width = *(MEMORY[0x277CBF398] + 16);
  height = *(MEMORY[0x277CBF398] + 24);
  v42 = 0;
  v43 = 0;
  objc_opt_class();
  v17 = objc_msgSend_seriesType(seriesCopy, v13, v14, v15, v16);
  v22 = objc_msgSend_elementBuilder(v17, v18, v19, v20, v21);
  v23 = TSUDynamicCast();

  v28 = objc_msgSend_countOfLabelsForSeries_forGroups_forBodyLayout_outNewTransforms_outNewElementSizes_outNewClipRects_outNewStrings_(v23, v24, v25, v26, v27, seriesCopy, 0, self, &v42, 0, &v43, 0);
  if (v28)
  {
    v29 = 0;
    v30 = 0;
    do
    {
      v44 = *(v43 + v29);
      v32 = *(v42 + v30 + 16);
      v31 = *(v42 + v30 + 32);
      *&v41.a = *(v42 + v30);
      *&v41.c = v32;
      *&v41.tx = v31;
      CGRectApplyAffineTransform(v44, &v41);
      TSUSubtractPoints();
      TSURectWithOriginAndSize();
      v48.origin.x = v33;
      v48.origin.y = v34;
      v48.size.width = v35;
      v48.size.height = v36;
      v45.origin.x = x;
      v45.origin.y = y;
      v45.size.width = width;
      v45.size.height = height;
      v46 = CGRectUnion(v45, v48);
      x = v46.origin.x;
      y = v46.origin.y;
      width = v46.size.width;
      height = v46.size.height;
      v30 += 48;
      v29 += 32;
      --v28;
    }

    while (v28);
  }

  free(v42);
  free(v43);

  v37 = x;
  v38 = y;
  v39 = width;
  v40 = height;
  result.size.height = v40;
  result.size.width = v39;
  result.origin.y = v38;
  result.origin.x = v37;
  return result;
}

- (CGRect)p_exactSummaryLabelsDrawingRectForSeries:(id)series
{
  seriesCopy = series;
  objc_msgSend_rootedLayoutRect(self, v5, v6, v7, v8);
  x = *MEMORY[0x277CBF398];
  y = *(MEMORY[0x277CBF398] + 8);
  width = *(MEMORY[0x277CBF398] + 16);
  height = *(MEMORY[0x277CBF398] + 24);
  v42 = 0;
  v43 = 0;
  objc_opt_class();
  v17 = objc_msgSend_seriesType(seriesCopy, v13, v14, v15, v16);
  v22 = objc_msgSend_elementBuilder(v17, v18, v19, v20, v21);
  v23 = TSUDynamicCast();

  v28 = objc_msgSend_countOfSummaryLabelsForGroups_forBodyLayout_outNewTransforms_outNewElementSizes_outNewClipRects_outNewStrings_(v23, v24, v25, v26, v27, 0, self, &v42, 0, &v43, 0);
  if (v28)
  {
    v29 = 0;
    v30 = 0;
    do
    {
      v44 = *(v43 + v29);
      v32 = *(v42 + v30 + 16);
      v31 = *(v42 + v30 + 32);
      *&v41.a = *(v42 + v30);
      *&v41.c = v32;
      *&v41.tx = v31;
      CGRectApplyAffineTransform(v44, &v41);
      TSUSubtractPoints();
      TSURectWithOriginAndSize();
      v48.origin.x = v33;
      v48.origin.y = v34;
      v48.size.width = v35;
      v48.size.height = v36;
      v45.origin.x = x;
      v45.origin.y = y;
      v45.size.width = width;
      v45.size.height = height;
      v46 = CGRectUnion(v45, v48);
      x = v46.origin.x;
      y = v46.origin.y;
      width = v46.size.width;
      height = v46.size.height;
      v30 += 48;
      v29 += 32;
      --v28;
    }

    while (v28);
  }

  free(v42);
  free(v43);

  v37 = x;
  v38 = y;
  v39 = width;
  v40 = height;
  result.size.height = v40;
  result.size.width = v39;
  result.origin.y = v38;
  result.origin.x = v37;
  return result;
}

- (CGRect)p_calcDrawingRectForModel:(id)model
{
  v168 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  objc_msgSend_rootedLayoutRect(self, v4, v5, v6, v7);
  v151 = v9;
  v152 = v8;
  v149 = v11;
  v150 = v10;
  v165 = 0;
  v14 = objc_msgSend_countOfElementsForModel_series_forGroupsBySeries_outNewElementBounds_outNewClipRects_outNewElementPaths_(self, v12, v8, v9, v10, modelCopy, 0, 0, 0, &v165, 0);
  y = v151;
  x = v152;
  height = v149;
  width = v150;
  if (v14)
  {
    v21 = 0;
    height = v149;
    width = v150;
    y = v151;
    x = v152;
    do
    {
      v22 = *(v165 + v21);
      v23 = *(v165 + v21 + 8);
      v24 = *(v165 + v21 + 16);
      v25 = *(v165 + v21 + 24);
      v169.origin.x = v22;
      v169.origin.y = v23;
      v169.size.width = v24;
      v169.size.height = v25;
      if (!CGRectIsNull(v169))
      {
        v170.origin.x = x;
        v170.origin.y = y;
        v170.size.width = width;
        v170.size.height = height;
        v185.origin.x = v22;
        v185.origin.y = v23;
        v185.size.width = v24;
        v185.size.height = v25;
        *(&v15 - 1) = CGRectUnion(v170, v185);
        x = v26;
        y = v15;
        width = v16;
        height = v27;
      }

      v21 += 32;
      --v14;
    }

    while (v14);
  }

  if (v165)
  {
    free(v165);
  }

  v163 = 0u;
  v164 = 0u;
  v161 = 0u;
  v162 = 0u;
  v28 = objc_msgSend_seriesList(modelCopy, v13, 0.0, v15, v16);
  v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, v30, v31, v32, &v161, v167, 16);
  if (v34)
  {
    v38 = *v162;
    v39 = MEMORY[0x277CBF398];
    do
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v162 != v38)
        {
          objc_enumerationMutation(v28);
        }

        v41 = *(*(&v161 + 1) + 8 * i);
        v42 = objc_msgSend_seriesType(v41, v33, v35, v36, v37);
        v47 = objc_msgSend_elementBuilder(v42, v43, v44, v45, v46);

        v52 = objc_msgSend_errorBarData(v41, v48, v49, v50, v51);
        LOBYTE(v42) = v52 == 0;

        if ((v42 & 1) == 0)
        {
          v57 = *(v39 + 16);
          v158.origin = *v39;
          v158.size = v57;
          objc_msgSend_countOfErrorBarsInSeries_forGroups_forAxisID_forBodyLayout_outClipRect_outNewErrorBarDescriptors_(v47, v53, v158.origin.x, v57.width, v56, v41, 0, 0, self, &v158, 0);
          if (!CGRectIsNull(v158))
          {
            v171.origin.y = v151;
            v171.origin.x = v152;
            v171.size.height = v149;
            v171.size.width = v150;
            v158 = CGRectIntersection(v171, v158);
            if (!CGRectIsNull(v158))
            {
              v172.origin.x = x;
              v172.origin.y = y;
              v172.size.width = width;
              v172.size.height = height;
              *&v54 = CGRectUnion(v172, v158);
              x = v54;
              y = v55;
              width = v56;
              height = v58;
            }
          }
        }

        v59 = objc_msgSend_trendLineData(v41, v53, v54, v55, v56);
        v60 = v59 == 0;

        if (!v60)
        {
          v63 = *(v39 + 16);
          v160.origin = *v39;
          v160.size = v63;
          objc_msgSend_trendlineElementForSeries_forBodyLayout_outElementBounds_outElementClipRect_outElementPath_(v47, v61, v160.origin.x, v63.width, v62, v41, self, 0, &v160, 0);
          if (!CGRectIsNull(v160))
          {
            v173.origin.y = v151;
            v173.origin.x = v152;
            v173.size.height = v149;
            v173.size.width = v150;
            v160 = CGRectIntersection(v173, v160);
            if (!CGRectIsNull(v160))
            {
              v174.origin.x = x;
              v174.origin.y = y;
              v174.size.width = width;
              v174.size.height = height;
              v175 = CGRectUnion(v174, v160);
              x = v175.origin.x;
              y = v175.origin.y;
              width = v175.size.width;
              height = v175.size.height;
            }
          }

          objc_opt_class();
          v68 = objc_msgSend_parent(self, v64, v65, v66, v67);
          v69 = TSUDynamicCast();

          v70 = *(v39 + 16);
          v159.origin = *v39;
          v159.size = v70;
          objc_msgSend_transformForRenderingTrendlineTextForSeries_forAreaLayout_outElementSize_outClipRect_outParagraphStyle_outNewString_(v47, v159.origin.x, v70.width, v71);
          if (!CGRectIsNull(v159))
          {
            v176.origin.y = v151;
            v176.origin.x = v152;
            v176.size.height = v149;
            v176.size.width = v150;
            v159 = CGRectIntersection(v176, v159);
            if (!CGRectIsNull(v159))
            {
              v177.origin.x = x;
              v177.origin.y = y;
              v177.size.width = width;
              v177.size.height = height;
              *(&v72 - 2) = CGRectUnion(v177, v159);
              x = v73;
              y = v74;
              width = v72;
              height = v75;
            }
          }

          v76 = *(v39 + 16);
          v157.origin = *v39;
          v157.size = v76;
          objc_msgSend_transformForRenderingR2TextForSeries_forAreaLayout_outElementSize_outClipRect_outParagraphStyle_outString_(v47, v157.origin.x, v76.width, v72);
          if (!CGRectIsNull(v157))
          {
            v178.origin.y = v151;
            v178.origin.x = v152;
            v178.size.height = v149;
            v178.size.width = v150;
            v157 = CGRectIntersection(v178, v157);
            if (!CGRectIsNull(v157))
            {
              v179.origin.x = x;
              v179.origin.y = y;
              v179.size.width = width;
              v179.size.height = height;
              v180 = CGRectUnion(v179, v157);
              x = v180.origin.x;
              y = v180.origin.y;
              width = v180.size.width;
              height = v180.size.height;
            }
          }
        }
      }

      v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v33, v35, v36, v37, &v161, v167, 16);
    }

    while (v34);
  }

  TSUSubtractPoints();
  TSURectWithOriginAndSize();
  v78 = v77;
  v80 = v79;
  v82 = v81;
  v84 = v83;
  v153 = 0u;
  v154 = 0u;
  v155 = 0u;
  v156 = 0u;
  v86 = objc_msgSend_seriesList(modelCopy, v85, 0.0, v79, v81);
  v92 = objc_msgSend_countByEnumeratingWithState_objects_count_(v86, v87, v88, v89, v90, &v153, v166, 16);
  if (v92)
  {
    v96 = *v154;
    do
    {
      for (j = 0; j != v92; ++j)
      {
        if (*v154 != v96)
        {
          objc_enumerationMutation(v86);
        }

        v98 = *(*(&v153 + 1) + 8 * j);
        if (objc_msgSend_intValueForProperty_defaultValue_(v98, v91, v93, v94, v95, 1181, 0))
        {
          v103 = 1;
        }

        else
        {
          v104 = objc_msgSend_seriesType(v98, v99, v100, v101, v102);
          v109 = objc_msgSend_supportsValueLabelsSeriesName(v104, v105, v106, v107, v108);

          if (v109)
          {
            v103 = objc_msgSend_intValueForProperty_defaultValue_(v98, v99, v100, v101, v102, 1178, 0) != 0;
          }

          else
          {
            v103 = 0;
          }
        }

        if (objc_msgSend_numberOfValues(v98, v99, v100, v101, v102))
        {
          v110 = v103;
        }

        else
        {
          v110 = 0;
        }

        if (v110)
        {
          objc_msgSend_p_exactLabelsDrawingRectForSeries_(self, v91, v93, v94, v95, v98);
          v186.origin.x = v111;
          v186.origin.y = v112;
          v186.size.width = v113;
          v186.size.height = v114;
          v181.origin.x = v78;
          v181.origin.y = v80;
          v181.size.width = v82;
          v181.size.height = v84;
          *&v93 = CGRectUnion(v181, v186);
          v78 = v93;
          v80 = v94;
          v82 = v95;
          v84 = v115;
        }
      }

      v92 = objc_msgSend_countByEnumeratingWithState_objects_count_(v86, v91, v93, v94, v95, &v153, v166, 16);
    }

    while (v92);
  }

  v120 = objc_msgSend_chart(modelCopy, v116, v117, v118, v119);
  v125 = objc_msgSend_intValueForProperty_defaultValue_(v120, v121, v122, v123, v124, 1122, 0) == 0;

  if (!v125)
  {
    v130 = objc_msgSend_seriesList(modelCopy, v126, v127, v128, v129);
    v135 = objc_msgSend_lastObject(v130, v131, v132, v133, v134);
    objc_msgSend_p_exactSummaryLabelsDrawingRectForSeries_(self, v136, v137, v138, v139, v135);
    v187.origin.x = v140;
    v187.origin.y = v141;
    v187.size.width = v142;
    v187.size.height = v143;
    v182.origin.x = v78;
    v182.origin.y = v80;
    v182.size.width = v82;
    v182.size.height = v84;
    v183 = CGRectUnion(v182, v187);
    v78 = v183.origin.x;
    v80 = v183.origin.y;
    v82 = v183.size.width;
    v84 = v183.size.height;
  }

  v144 = v78;
  v145 = v80;
  v146 = v82;
  v147 = v84;
  result.size.height = v147;
  result.size.width = v146;
  result.origin.y = v145;
  result.origin.x = v144;
  return result;
}

- (CGRect)calcOverhangRect
{
  v121 = *MEMORY[0x277D85DE8];
  objc_msgSend_drawingRect(self, a2, v2, v3, v4);
  v123 = CGRectStandardize(v122);
  x = v123.origin.x;
  y = v123.origin.y;
  width = v123.size.width;
  height = v123.size.height;
  v11 = objc_msgSend_chartInfo(self, v10, v123.origin.x, v123.origin.y, v123.size.width);
  v16 = objc_msgSend_chartType(v11, v12, v13, v14, v15);

  v21 = objc_msgSend_bubbleChart(TSCHChartType, v17, v18, v19, v20);
  if (objc_msgSend_isEqual_(v16, v22, v23, v24, v25, v21))
  {
  }

  else
  {
    v30 = objc_msgSend_multiDataBubbleChart(TSCHChartType, v26, v27, v28, v29);
    isEqual = objc_msgSend_isEqual_(v16, v31, v32, v33, v34, v30);

    if (!isEqual)
    {
      goto LABEL_31;
    }
  }

  objc_opt_class();
  v40 = objc_msgSend_parent(self, v36, v37, v38, v39);
  v41 = TSUDynamicCast();

  if (v41)
  {
    objc_msgSend_i_currentBufferAreaUnitRect(v41, v42, v43, v44, v45);
  }

  else
  {
    v46 = *(MEMORY[0x277CBF3A0] + 16);
  }

  v118 = 0u;
  v119 = 0u;
  v116 = 0u;
  v117 = 0u;
  v47 = objc_msgSend_chartInfo(self, v42, 0.0, v46, v45);
  v52 = objc_msgSend_model(v47, v48, v49, v50, v51);
  v57 = objc_msgSend_seriesList(v52, v53, v54, v55, v56);

  v63 = objc_msgSend_countByEnumeratingWithState_objects_count_(v57, v58, v59, v60, v61, &v116, v120, 16);
  if (v63)
  {
    v67 = *v117;
    v68 = 0.0;
    do
    {
      for (i = 0; i != v63; ++i)
      {
        if (*v117 != v67)
        {
          objc_enumerationMutation(v57);
        }

        LODWORD(v64) = 1.0;
        objc_msgSend_floatValueForProperty_defaultValue_(*(*(&v116 + 1) + 8 * i), v62, v64, v65, v66, 1130);
        v64 = v70;
        if (v68 < v64)
        {
          v68 = v64;
        }
      }

      v63 = objc_msgSend_countByEnumeratingWithState_objects_count_(v57, v62, v64, v65, v66, &v116, v120, 16);
    }

    while (v63);
  }

  else
  {
    v68 = 0.0;
  }

  objc_msgSend_layoutSize(self, v71, v72, v73, v74);
  v76 = v75;
  v78 = v77;
  TSURectWithOriginAndSize();
  v80 = v79;
  v82 = v81;
  width = v83;
  v85 = v84;
  TSUAddSizes();
  TSURectWithOriginAndSize();
  v113 = v124.size.height;
  v114 = v124.size.width;
  v111 = v80;
  v129.origin.x = v80;
  v129.origin.y = v82;
  v129.size.width = width;
  height = v85;
  v129.size.height = v85;
  if (CGRectContainsRect(v124, v129))
  {
    x = v111;
    y = v82;
    goto LABEL_30;
  }

  TSUAddSizes();
  TSURectWithOriginAndSize();
  v130.origin.x = v111;
  v130.origin.y = v82;
  v130.size.width = width;
  v130.size.height = v85;
  v126 = CGRectUnion(v125, v130);
  v86 = 0;
  v87 = v114;
  v112 = 0.27 * v68 + 1.0;
  v88 = v76;
  v89 = v78;
  v90 = v113;
  while (vabdd_f64(v87, v126.size.width) > 0.01)
  {
    if (v86 > 0x13)
    {
      goto LABEL_29;
    }

LABEL_28:
    v88 = v88 + (v87 - v126.size.width) / v112;
    v89 = v89 + (v90 - v126.size.height) / v112;
    TSUAddSizes();
    TSURectWithOriginAndSize();
    r2 = v92;
    v94 = v93;
    v96 = v95;
    v98 = v97;
    TSURectWithOriginAndSize();
    v131.origin.x = v99;
    v131.origin.y = v100;
    v131.size.width = v101;
    v131.size.height = v102;
    v127.origin.x = r2;
    v127.origin.y = v94;
    v127.size.width = v96;
    v127.size.height = v98;
    v126 = CGRectUnion(v127, v131);
    ++v86;
    v90 = v113;
    v87 = v114;
  }

  if (vabdd_f64(v90, v126.size.height) > 0.01 && v86 < 0x14)
  {
    goto LABEL_28;
  }

LABEL_29:
  TSURectWithOriginAndSize();
  x = v103;
  y = v104;
  width = v105;
  height = v106;
LABEL_30:

LABEL_31:
  v107 = x;
  v108 = y;
  v109 = width;
  v110 = height;
  result.size.height = v110;
  result.size.width = v109;
  result.origin.y = v108;
  result.origin.x = v107;
  return result;
}

- (void)layoutOutward
{
  v2.receiver = self;
  v2.super_class = TSCHChartBodyLayoutItem;
  [(TSCHChartLayoutItem *)&v2 layoutOutward];
}

- (void)p_addRendererOfClass:(Class)class andRep:(id)rep toArray:(id)array
{
  repCopy = rep;
  arrayCopy = array;
  if (class)
  {
    v9 = [class alloc];
    v14 = objc_msgSend_initWithChartRep_layoutItem_(v9, v10, v11, v12, v13, repCopy, self);
    objc_msgSend_addObject_(arrayCopy, v15, v16, v17, v18, v14);
  }
}

- (id)renderersWithRep:(id)rep
{
  v151 = *MEMORY[0x277D85DE8];
  repCopy = rep;
  v9 = objc_msgSend_model(self, v5, v6, v7, v8);
  v130 = objc_msgSend_seriesList(v9, v10, v11, v12, v13);

  v135 = objc_msgSend_set(MEMORY[0x277CBEB58], v14, v15, v16, v17);
  v146 = 0u;
  v147 = 0u;
  v144 = 0u;
  v145 = 0u;
  obj = v130;
  v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v18, v19, v20, v21, &v144, v150, 16);
  if (v23)
  {
    v27 = *v145;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v145 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v29 = objc_msgSend_seriesType(*(*(&v144 + 1) + 8 * i), v22, v24, v25, v26, v130);
        objc_msgSend_addObject_(v135, v30, v31, v32, v33, v29);
      }

      v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v22, v24, v25, v26, &v144, v150, 16);
    }

    while (v23);
  }

  v131 = objc_msgSend_array(MEMORY[0x277CBEB18], v34, v35, v36, v37);
  v42 = objc_msgSend_mixedAreaSeries(TSCHChartSeriesType, v38, v39, v40, v41);
  v47 = objc_msgSend_member_(v135, v43, v44, v45, v46, v42);

  if (v47)
  {
    objc_msgSend_addObject_(v131, v48, v49, v50, v51, v47);
    objc_msgSend_removeObject_(v135, v52, v53, v54, v55, v47);
  }

  v56 = objc_msgSend_mixedColumnSeries(TSCHChartSeriesType, v48, v49, v50, v51, v130);
  v61 = objc_msgSend_member_(v135, v57, v58, v59, v60, v56);

  v66 = v61;
  if (v61)
  {
    objc_msgSend_addObject_(v131, v62, v63, v64, v65, v61);
    objc_msgSend_removeObject_(v135, v67, v68, v69, v70, v61);
  }

  v71 = objc_msgSend_mixedLineSeries(TSCHChartSeriesType, v62, v63, v64, v65);
  v76 = objc_msgSend_member_(v135, v72, v73, v74, v75, v71);

  v81 = v76;
  if (v76)
  {
    objc_msgSend_addObject_(v131, v77, v78, v79, v80, v76);
    objc_msgSend_removeObject_(v135, v82, v83, v84, v85, v76);
  }

  v86 = objc_msgSend_allObjects(v135, v77, v78, v79, v80);
  objc_msgSend_addObjectsFromArray_(v131, v87, v88, v89, v90, v86);

  v95 = objc_msgSend_array(MEMORY[0x277CBEB18], v91, v92, v93, v94);
  v142 = 0u;
  v143 = 0u;
  v140 = 0u;
  v141 = 0u;
  v132 = v131;
  v100 = objc_msgSend_countByEnumeratingWithState_objects_count_(v132, v96, v97, v98, v99, &v140, v149, 16);
  if (v100)
  {
    v133 = *v141;
    do
    {
      v101 = 0;
      v102 = v81;
      do
      {
        if (*v141 != v133)
        {
          objc_enumerationMutation(v132);
        }

        v81 = *(*(&v140 + 1) + 8 * v101);

        v107 = objc_msgSend_seriesRendererClasses(v81, v103, v104, v105, v106);
        v138 = 0u;
        v139 = 0u;
        v136 = 0u;
        v137 = 0u;
        v108 = v107;
        v114 = objc_msgSend_countByEnumeratingWithState_objects_count_(v108, v109, v110, v111, v112, &v136, v148, 16);
        if (v114)
        {
          v118 = *v137;
          do
          {
            for (j = 0; j != v114; ++j)
            {
              if (*v137 != v118)
              {
                objc_enumerationMutation(v108);
              }

              v120 = objc_msgSend_pointerValue(*(*(&v136 + 1) + 8 * j), v113, v115, v116, v117);
              objc_msgSend_p_addRendererOfClass_andRep_toArray_(self, v121, v122, v123, v124, v120, repCopy, v95);
            }

            v114 = objc_msgSend_countByEnumeratingWithState_objects_count_(v108, v113, v115, v116, v117, &v136, v148, 16);
          }

          while (v114);
        }

        ++v101;
        v102 = v81;
      }

      while (v101 != v100);
      v100 = objc_msgSend_countByEnumeratingWithState_objects_count_(v132, v125, v126, v127, v128, &v140, v149, 16);
    }

    while (v100);
  }

  return v95;
}

- (void)p_nudgeBarElementFrame:(CGRect *)frame usingBarModelCache:(id)cache unitSpaceValueBegin:(double)begin unitSpaceValueEnd:(double)end
{
  cacheCopy = cache;
  objc_msgSend_rootedLayoutRect(self, v10, v11, v12, v13);
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  objc_msgSend_unitSpaceIntercept(cacheCopy, v22, v14, v16, v18);
  v27 = v24;
  v28 = v24 < 1.0 && v24 > 0.0;
  v29 = objc_msgSend_valueAxis(cacheCopy, v23, 1.0, v25, v26);
  objc_msgSend_modelMin(v29, v30, v31, v32, v33);
  objc_msgSend_unitSpaceValueForDataSpaceValue_(v29, v34, v35, v36, v37);
  v39 = v38;
  objc_msgSend_modelMax(v29, v40, v38, v41, v42);
  objc_msgSend_unitSpaceValueForDataSpaceValue_(v29, v43, v44, v45, v46);
  if (self->_vertical)
  {
    if (v28 && (v27 == begin || vabdd_f64(v27, begin) < fabs(begin * 1.0e-10)))
    {
      height = frame->size.height;
      if (v27 > end)
      {
        if (height <= 0.5)
        {
          goto LABEL_22;
        }

        frame->origin.y = frame->origin.y + 0.5;
      }

      else if (height <= 0.5)
      {
LABEL_22:
        if (fabs(height) <= 0.5)
        {
          v50 = *(MEMORY[0x277CBF398] + 16);
          frame->origin = *MEMORY[0x277CBF398];
          frame->size = v50;
        }

        goto LABEL_24;
      }

      frame->size.height = height + -0.5;
    }

LABEL_24:
    if (v27 > end && (v39 == end || (vabdd_f64(v39, end) >= fabs(end * 1.0e-10) ? (v51 = v39 <= end) : (v51 = 0), !v51)) || v27 <= end && (v47 == end || (vabdd_f64(v47, end) >= fabs(end * 1.0e-10) ? (v52 = v47 < end) : (v52 = 1), v52)))
    {
      if (CGRectGetMinY(*frame) - v17 < 0.5)
      {
        v53 = v17 + 0.5 - frame->origin.y;
        frame->origin.y = v17 + 0.5;
        frame->size.height = frame->size.height - v53;
      }
    }

    if ((v27 == begin || vabdd_f64(v27, begin) < fabs(begin * 1.0e-10)) && v17 + v21 - CGRectGetMaxY(*frame) < 0.5)
    {
      frame->size.height = v17 + v21 + -0.5 - frame->origin.y;
    }

    v54 = frame->size.height;
    goto LABEL_69;
  }

  if (v28 && (v27 == begin || vabdd_f64(v27, begin) < fabs(begin * 1.0e-10)))
  {
    width = frame->size.width;
    if (v27 > end)
    {
      if (width > 0.5)
      {
        goto LABEL_21;
      }

      width = frame->size.height;
    }

    else if (width > 0.5)
    {
      frame->origin.x = frame->origin.x + 0.5;
LABEL_21:
      frame->size.width = width + -0.5;
      goto LABEL_48;
    }

    if (fabs(width) <= 0.5)
    {
      v55 = *(MEMORY[0x277CBF398] + 16);
      frame->origin = *MEMORY[0x277CBF398];
      frame->size = v55;
    }
  }

LABEL_48:
  if (v27 > end && (v39 == end || (vabdd_f64(v39, end) >= fabs(end * 1.0e-10) ? (v56 = v39 <= end) : (v56 = 0), !v56)) || v27 <= end && (v47 == end || (vabdd_f64(v47, end) >= fabs(end * 1.0e-10) ? (v57 = v47 < end) : (v57 = 1), v57)))
  {
    if (v15 + v19 - CGRectGetMaxX(*frame) < 0.5)
    {
      frame->size.width = v15 + v19 + -0.5 - frame->origin.x;
    }
  }

  if ((v27 == begin || vabdd_f64(v27, begin) < fabs(begin * 1.0e-10)) && CGRectGetMinX(*frame) - v15 < 0.5)
  {
    v58 = v15 + 0.5 - frame->origin.x;
    frame->origin.x = v15 + 0.5;
    frame->size.width = frame->size.width - v58;
  }

  v54 = frame->size.width;
LABEL_69:
  if (fabs(v54) < 0.5)
  {
    v59 = *(MEMORY[0x277CBF398] + 16);
    frame->origin = *MEMORY[0x277CBF398];
    frame->size = v59;
  }
}

- (unint64_t)countOfElementsForModel:(id)model series:(id)series forGroupsBySeries:(id)bySeries outNewElementBounds:(CGRect *)bounds outNewClipRects:(CGRect *)rects outNewElementPaths:(const CGPath *)paths
{
  modelCopy = model;
  seriesCopy = series;
  bySeriesCopy = bySeries;
  v21 = objc_msgSend_numberOfSeries(modelCopy, v17, v18, v19, v20);
  if (seriesCopy)
  {
    v74 = seriesCopy;
  }

  else
  {
    v74 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], v22, v23, v24, v25, 0, v21);
  }

  v104 = 0;
  v105 = &v104;
  v106 = 0x4812000000;
  v107 = sub_27627D3F4;
  v108 = sub_27627D418;
  v109 = &unk_27657B92B;
  v111 = 0;
  v112 = 0;
  v110 = 0;
  v95 = 0;
  v96 = &v95;
  v97 = 0x4812000000;
  v98 = sub_27627D430;
  v99 = sub_27627D454;
  v100 = &unk_27657B92B;
  v102 = 0;
  v103 = 0;
  v101 = 0;
  v86 = 0;
  v87 = &v86;
  v88 = 0x4812000000;
  v89 = sub_27627D430;
  v90 = sub_27627D454;
  v91 = &unk_27657B92B;
  v93 = 0;
  v94 = 0;
  __p = 0;
  v26 = objc_msgSend_count(bySeriesCopy, v22, COERCE_DOUBLE(0x4812000000), v24, v25);
  v75[0] = MEMORY[0x277D85DD0];
  v75[1] = 3221225472;
  v75[2] = sub_27627D46C;
  v75[3] = &unk_27A6B7270;
  v27 = modelCopy;
  v76 = v27;
  v28 = bySeriesCopy;
  v77 = v28;
  selfCopy = self;
  boundsCopy = bounds;
  rectsCopy = rects;
  pathsCopy = paths;
  v79 = &v104;
  v80 = &v95;
  v81 = &v86;
  v82 = v26;
  objc_msgSend_tsu_enumerateIndexesAndPositionsUsingBlock_(v74, v29, v30, v31, v32, v75);
  v37 = v96[7] - v96[6];
  if ((v105[7] - v105[6]) >> 3 != v37 >> 5 || v37 != v87[7] - v87[6])
  {
    v38 = MEMORY[0x277D81150];
    v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, v34, v35, v36, "[TSCHChartBodyLayoutItem countOfElementsForModel:series:forGroupsBySeries:outNewElementBounds:outNewClipRects:outNewElementPaths:]");
    v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, v41, v42, v43, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartBodyLayoutItem.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v45, v46, v47, v48, v39, v44, 646, 0, "Uneven arrays. This will end badly.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v49, v50, v51, v52);
  }

  if (paths)
  {
    v54 = v105[6];
    v53 = v105[7];
    *paths = malloc_type_calloc(8uLL, (v53 - v54) >> 3, 0x6004044C4A2DFuLL);
    if (v53 != v54)
    {
      v55 = 0;
      if (((v53 - v54) >> 3) <= 1)
      {
        v56 = 1;
      }

      else
      {
        v56 = (v53 - v54) >> 3;
      }

      do
      {
        (*paths)[v55] = *(v105[6] + 8 * v55);
        ++v55;
      }

      while (v56 != v55);
    }
  }

  if (bounds)
  {
    v58 = v96[6];
    v57 = v96[7];
    *bounds = malloc_type_calloc(0x20uLL, (v57 - v58) >> 5, 0x1000040E0EAB150uLL);
    if (v57 != v58)
    {
      v59 = 0;
      if (((v57 - v58) >> 5) <= 1)
      {
        v60 = 1;
      }

      else
      {
        v60 = (v57 - v58) >> 5;
      }

      do
      {
        v61 = (v96[6] + v59 * 32);
        v62 = &(*bounds)[v59];
        v63 = v61[1];
        v62->origin = *v61;
        v62->size = v63;
        ++v59;
        --v60;
      }

      while (v60);
    }
  }

  if (rects)
  {
    v65 = v87[6];
    v64 = v87[7];
    *rects = malloc_type_calloc(0x20uLL, (v64 - v65) >> 5, 0x1000040E0EAB150uLL);
    if (v64 != v65)
    {
      v66 = 0;
      if (((v64 - v65) >> 5) <= 1)
      {
        v67 = 1;
      }

      else
      {
        v67 = (v64 - v65) >> 5;
      }

      do
      {
        v68 = (v87[6] + v66 * 32);
        v69 = &(*rects)[v66];
        v70 = v68[1];
        v69->origin = *v68;
        v69->size = v70;
        ++v66;
        --v67;
      }

      while (v67);
    }
  }

  v72 = v105[6];
  v71 = v105[7];

  _Block_object_dispose(&v86, 8);
  if (__p)
  {
    v93 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&v95, 8);
  if (v101)
  {
    v102 = v101;
    operator delete(v101);
  }

  _Block_object_dispose(&v104, 8);
  if (v110)
  {
    v111 = v110;
    operator delete(v110);
  }

  return (v71 - v72) >> 3;
}

- (void)iterateHitChartElements:(CGPoint)elements withBlock:(id)block
{
  v855 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (blockCopy)
  {
    v837 = 0;
    selfCopy = self;
    v9 = objc_msgSend_model(self, v5, v6, v7, v8);
    v14 = objc_msgSend_seriesList(v9, v10, v11, v12, v13);

    v747 = v14;
    v749 = objc_msgSend_sortedArrayUsingComparator_(v14, v15, v16, v17, v18, &unk_28851DDE0);
    v23 = objc_msgSend_chartInfo(selfCopy, v19, v20, v21, v22);
    v28 = objc_msgSend_chartType(v23, v24, v25, v26, v27);
    v748 = objc_msgSend_valueAxisIDs(v28, v29, v30, v31, v32);

    v37 = objc_msgSend_firstObject(v749, v33, v34, v35, v36);
    v42 = objc_msgSend_seriesType(v37, v38, v39, v40, v41);
    v763 = objc_msgSend_elementBuilder(v42, v43, v44, v45, v46);

    v836 = 0u;
    v834 = 0u;
    v835 = 0u;
    v833 = 0u;
    v50 = objc_msgSend_model(selfCopy, v47, 0.0, v48, v49);
    v55 = objc_msgSend_axisList(v50, v51, v52, v53, v54);

    obj = v55;
    v60 = objc_msgSend_countByEnumeratingWithState_objects_count_(v55, v56, v57, v58, v59, &v833, v854, 16);
    if (v60)
    {
      v758 = *v834;
      v777 = vdupq_n_s64(0x7FF0000000000000uLL);
      do
      {
        v753 = v60;
        for (i = 0; i != v753; i = i + 1)
        {
          if (*v834 != v758)
          {
            objc_enumerationMutation(obj);
          }

          v64 = *(*(&v833 + 1) + 8 * i);
          v65 = *(MEMORY[0x277CBF398] + 16);
          recta.origin = *MEMORY[0x277CBF398];
          recta.size = v65;
          v817.a = 0.0;
          v66 = objc_msgSend_axisID(v64, v61, recta.origin.x, v65.width, v62);
          v71 = objc_msgSend_model(selfCopy, v67, v68, v69, v70);
          v832 = 0;
          LOBYTE(v744) = 0;
          v76 = objc_msgSend_countOfReferenceLinesForAxisID_model_forBodyLayout_outClipRect_outNewClipRects_outNewLineDescriptors_outReferenceLines_includeOutsideChartBodyBounds_outOutsideChartBodyBounds_(v763, v72, v73, v74, v75, v66, v71, selfCopy, &recta, 0, &v817, &v832, v744, 0);
          v77 = v832;

          if (v76 && !CGRectIsNull(recta))
          {
            for (j = 0; j != v76; ++j)
            {
              v79 = *&v817.a + 32 * j;
              v80 = *(v79 + 16);
              v81 = vmovn_s32(vuzp1q_s32(vceqq_f64(vabsq_f64(*v79), v777), vceqq_f64(vabsq_f64(v80), v777)));
              v82 = vuzp1_s8(v81, v81);
              v82.i32[1] = vuzp1_s8(v82, vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(*v79, *v79), vceqq_f64(v80, v80))))).i32[1];
              if ((vmaxv_u8(vcltz_s8(vshl_n_s8(v82, 7uLL))) & 1) == 0)
              {
                Mutable = CGPathCreateMutable();
                CGPathMoveToPointSafe();
                CGPathAddLineToPointSafe();
                v88 = objc_msgSend_objectAtIndexedSubscript_(v77, v84, v85, v86, v87, j);
                v93 = objc_msgSend_valueForProperty_(v88, v89, v90, v91, v92, 1225);
                v98 = objc_msgSend_newStrokedPathFromPath_stroke_cap_(TSCHRenderUtilities, v94, v95, v96, v97, Mutable, v93, 0);

                LODWORD(v93) = CGPathContainsPointSafe();
                CGPathRelease(v98);
                CGPathRelease(Mutable);
                if (v93)
                {
                  v103 = objc_msgSend_styleSwapIndex(v88, v99, v100, v101, v102);
                  v108 = objc_msgSend_referenceLineType(TSCHSelectionPathType, v104, v105, v106, v107);
                  v113 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v109, v110, v111, v112, v103);
                  v853 = v113;
                  v118 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v114, v115, v116, v117, &v853, 1);
                  v123 = objc_msgSend_selectionPathWithPathType_arguments_(TSCHSelectionPath, v119, v120, v121, v122, v108, v118);

                  blockCopy[2](blockCopy, v123, &v837);
                }

                v124 = v837;

                if (v124)
                {
                  free(*&v817.a);

                  goto LABEL_215;
                }
              }
            }
          }

          free(*&v817.a);
        }

        v60 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v61, v125, v126, v62, &v833, v854, 16);
      }

      while (v60);
    }

    v830 = 0u;
    v831 = 0u;
    v828 = 0u;
    v829 = 0u;
    v778 = v749;
    v132 = objc_msgSend_countByEnumeratingWithState_objects_count_(v778, v127, v128, v129, v130, &v828, v852, 16);
    if (v132)
    {
      v136 = *v829;
      do
      {
        for (k = 0; k != v132; ++k)
        {
          if (*v829 != v136)
          {
            objc_enumerationMutation(v778);
          }

          v138 = *(*(&v828 + 1) + 8 * k);
          v139 = objc_msgSend_trendLineData(v138, v131, v133, v134, v135);
          v140 = v139 == 0;

          if (!v140)
          {
            v141 = *(MEMORY[0x277CBF398] + 16);
            recta.origin = *MEMORY[0x277CBF398];
            recta.size = v141;
            v142 = objc_msgSend_seriesType(v138, v131, recta.origin.x, v141.width, v135);
            v147 = objc_msgSend_elementBuilder(v142, v143, v144, v145, v146);
            v827 = 0;
            objc_msgSend_trendlineElementForSeries_forBodyLayout_outElementBounds_outElementClipRect_outElementPath_(v147, v148, v149, v150, v151, v138, selfCopy, 0, &recta, &v827);
            v152 = v827;
            if (v152 && !CGRectIsNull(recta) && (objc_msgSend_isEmpty(v152, v153, v154, v155, v156) & 1) == 0)
            {
              v157 = v152;
              v162 = objc_msgSend_CGPath(v152, v158, v159, v160, v161);
              v167 = objc_msgSend_valueForProperty_(v138, v163, v164, v165, v166, 1202);
              v172 = objc_msgSend_newStrokedPathFromPath_stroke_cap_(TSCHRenderUtilities, v168, v169, v170, v171, v162, v167, 2);

              LODWORD(v167) = CGPathContainsPointSafe();
              CGPathRelease(v172);
              if (v167)
              {
                v177 = objc_msgSend_trendLineType(TSCHSelectionPathType, v173, v174, v175, v176);
                v178 = MEMORY[0x277CCABB0];
                v183 = objc_msgSend_seriesIndex(v138, v179, v180, v181, v182);
                v188 = objc_msgSend_numberWithUnsignedInteger_(v178, v184, v185, v186, v187, v183);
                v851 = v188;
                v193 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v189, v190, v191, v192, &v851, 1);
                v198 = objc_msgSend_selectionPathWithPathType_arguments_(TSCHSelectionPath, v194, v195, v196, v197, v177, v193);

                blockCopy[2](blockCopy, v198, &v837);
              }

              if (v837)
              {

                goto LABEL_215;
              }
            }
          }
        }

        v132 = objc_msgSend_countByEnumeratingWithState_objects_count_(v778, v131, v133, v134, v135, &v828, v852, 16);
      }

      while (v132);
    }

    v825 = 0u;
    v826 = 0u;
    v823 = 0u;
    v824 = 0u;
    v766 = v778;
    v204 = objc_msgSend_countByEnumeratingWithState_objects_count_(v766, v199, v200, v201, v202, &v823, v850, 16);
    if (v204)
    {
      v208 = *v824;
      do
      {
        for (m = 0; m != v204; ++m)
        {
          if (*v824 != v208)
          {
            objc_enumerationMutation(v766);
          }

          v210 = *(*(&v823 + 1) + 8 * m);
          v211 = objc_msgSend_trendLineData(v210, v203, v205, v206, v207);
          v212 = v211 == 0;

          if (!v212)
          {
            v213 = objc_msgSend_seriesType(v210, v203, v205, v206, v207);
            v218 = objc_msgSend_elementBuilder(v213, v214, v215, v216, v217);
            objc_opt_class();
            v223 = objc_msgSend_parent(selfCopy, v219, v220, v221, v222);
            v224 = TSUDynamicCast();

            v226 = *(MEMORY[0x277CBF398] + 16);
            *v821 = *MEMORY[0x277CBF398];
            v822 = v226;
            v227 = *MEMORY[0x277CBF3A8];
            v819 = 0u;
            *v820 = v227;
            memset(&recta, 0, sizeof(recta));
            if (v218)
            {
              objc_msgSend_transformForRenderingTrendlineTextForSeries_forAreaLayout_outElementSize_outClipRect_outParagraphStyle_outNewString_(v218, 0.0, *&v227, v225);
            }

            *&v816.a = recta.origin;
            *&v816.c = recta.size;
            *&v816.tx = v819;
            memset(&v817, 0, sizeof(v817));
            CGAffineTransformInvert(&v817, &v816);
            a = v817.a;
            b = v817.b;
            c = v817.c;
            d = v817.d;
            tx = v817.tx;
            ty = v817.ty;
            objc_msgSend_labelRectFromClipRect_elementSize_(TSCHRenderUtilities, v232, *v821, *&v821[1], *&v822, *(&v822 + 1), *v820, *&v820[1]);
            x = v860.origin.x;
            y = v860.origin.y;
            width = v860.size.width;
            height = v860.size.height;
            if (!CGRectIsNull(v860))
            {
              v856.x = tx + elements.y * c + a * elements.x;
              v856.y = ty + elements.y * d + b * elements.x;
              v861.origin.x = x;
              v861.origin.y = y;
              v861.size.width = width;
              v861.size.height = height;
              if (CGRectContainsPoint(v861, v856))
              {
                v241 = objc_msgSend_trendLineEquationType(TSCHSelectionPathType, v237, v238, v239, v240);
                v242 = MEMORY[0x277CCABB0];
                v247 = objc_msgSend_seriesIndex(v210, v243, v244, v245, v246);
                v252 = objc_msgSend_numberWithUnsignedInteger_(v242, v248, v249, v250, v251, v247);
                v849 = v252;
                v257 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v253, v254, v255, v256, &v849, 1);
                v262 = objc_msgSend_selectionPathWithPathType_arguments_(TSCHSelectionPath, v258, v259, v260, v261, v241, v257);

                blockCopy[2](blockCopy, v262, &v837);
              }
            }

            v263 = v837;

            if (v263)
            {

              goto LABEL_215;
            }
          }
        }

        v204 = objc_msgSend_countByEnumeratingWithState_objects_count_(v766, v203, v205, v206, v207, &v823, v850, 16);
      }

      while (v204);
    }

    v814 = 0u;
    v815 = 0u;
    v812 = 0u;
    v813 = 0u;
    v767 = v766;
    v269 = objc_msgSend_countByEnumeratingWithState_objects_count_(v767, v264, v265, v266, v267, &v812, v848, 16);
    if (v269)
    {
      v273 = *v813;
      do
      {
        for (n = 0; n != v269; ++n)
        {
          if (*v813 != v273)
          {
            objc_enumerationMutation(v767);
          }

          v275 = *(*(&v812 + 1) + 8 * n);
          v276 = objc_msgSend_trendLineData(v275, v268, v270, v271, v272);
          v277 = v276 == 0;

          if (!v277)
          {
            v278 = objc_msgSend_seriesType(v275, v268, v270, v271, v272);
            v283 = objc_msgSend_elementBuilder(v278, v279, v280, v281, v282);
            objc_opt_class();
            v288 = objc_msgSend_parent(selfCopy, v284, v285, v286, v287);
            v289 = TSUDynamicCast();

            v291 = *(MEMORY[0x277CBF398] + 16);
            *v821 = *MEMORY[0x277CBF398];
            v822 = v291;
            v292 = *MEMORY[0x277CBF3A8];
            v819 = 0u;
            *v820 = v292;
            memset(&recta, 0, sizeof(recta));
            if (v283)
            {
              objc_msgSend_transformForRenderingR2TextForSeries_forAreaLayout_outElementSize_outClipRect_outParagraphStyle_outString_(v283, 0.0, *&v292, v290);
            }

            *&v816.a = recta.origin;
            *&v816.c = recta.size;
            *&v816.tx = v819;
            memset(&v817, 0, sizeof(v817));
            CGAffineTransformInvert(&v817, &v816);
            v771 = v817.a;
            v780 = v817.b;
            v293 = v817.c;
            v294 = v817.d;
            v295 = v817.tx;
            v296 = v817.ty;
            objc_msgSend_labelRectFromClipRect_elementSize_(TSCHRenderUtilities, v297, *v821, *&v821[1], *&v822, *(&v822 + 1), *v820, *&v820[1]);
            v298 = v862.origin.x;
            v299 = v862.origin.y;
            v300 = v862.size.width;
            v301 = v862.size.height;
            if (!CGRectIsNull(v862))
            {
              v857.x = v295 + elements.y * v293 + v771 * elements.x;
              v857.y = v296 + elements.y * v294 + v780 * elements.x;
              v863.origin.x = v298;
              v863.origin.y = v299;
              v863.size.width = v300;
              v863.size.height = v301;
              if (CGRectContainsPoint(v863, v857))
              {
                v306 = objc_msgSend_trendLineR2Type(TSCHSelectionPathType, v302, v303, v304, v305);
                v307 = MEMORY[0x277CCABB0];
                v312 = objc_msgSend_seriesIndex(v275, v308, v309, v310, v311);
                v317 = objc_msgSend_numberWithUnsignedInteger_(v307, v313, v314, v315, v316, v312);
                v847 = v317;
                v322 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v318, v319, v320, v321, &v847, 1);
                v327 = objc_msgSend_selectionPathWithPathType_arguments_(TSCHSelectionPath, v323, v324, v325, v326, v306, v322);

                blockCopy[2](blockCopy, v327, &v837);
              }
            }

            v328 = v837;

            if (v328)
            {

              goto LABEL_215;
            }
          }
        }

        v269 = objc_msgSend_countByEnumeratingWithState_objects_count_(v767, v268, v270, v271, v272, &v812, v848, 16);
      }

      while (v269);
    }

    v810 = 0u;
    v811 = 0u;
    v808 = 0u;
    v809 = 0u;
    v329 = v767;
    v772 = v329;
    v335 = objc_msgSend_countByEnumeratingWithState_objects_count_(v329, v330, v331, v332, v333, &v808, v846, 16);
    if (v335)
    {
      v339 = *v809;
      v340 = MEMORY[0x277CBF398];
      v745 = *v809;
      do
      {
        v341 = 0;
        obja = v335;
        do
        {
          if (*v809 != v339)
          {
            objc_enumerationMutation(v329);
          }

          v342 = *(*(&v808 + 1) + 8 * v341);
          v759 = objc_msgSend_seriesType(v342, v334, v336, v337, v338);
          v347 = objc_msgSend_elementBuilder(v759, v343, v344, v345, v346);
          v806 = 0u;
          v807 = 0u;
          v804 = 0u;
          v805 = 0u;
          v348 = v748;
          v781 = v348;
          v354 = objc_msgSend_countByEnumeratingWithState_objects_count_(v348, v349, v350, v351, v352, &v804, v845, 16);
          v754 = v341;
          if (v354)
          {
            v356 = *v805;
            do
            {
              for (ii = 0; ii != v354; ++ii)
              {
                if (*v805 != v356)
                {
                  objc_enumerationMutation(v348);
                }

                v358 = *(*(&v804 + 1) + 8 * ii);
                v359 = *(v340 + 16);
                recta.origin = *v340;
                recta.size = v359;
                v817.a = 0.0;
                v360 = objc_msgSend_countOfErrorBarsInSeries_forGroups_forAxisID_forBodyLayout_outClipRect_outNewErrorBarDescriptors_(v347, v353, recta.origin.x, v359.width, v355, v342, 0, v358, selfCopy, &recta, &v817);
                if (v360 && !CGRectIsNull(recta) && CGRectContainsPoint(recta, elements) && sub_276348654(v342, v358, *&v817.a, v360, recta.origin.x, recta.origin.y, recta.size.width, recta.size.height, elements.x, elements.y))
                {
                  v363 = objc_msgSend_errorBarType(TSCHSelectionPathType, v353, v361, v362, v355);
                  v364 = MEMORY[0x277CBEA60];
                  v365 = MEMORY[0x277CCABB0];
                  v370 = objc_msgSend_seriesIndex(v342, v366, v367, v368, v369);
                  v375 = objc_msgSend_numberWithUnsignedInteger_(v365, v371, v372, v373, v374, v370);
                  v380 = objc_msgSend_arrayWithObjects_(v364, v376, v377, v378, v379, v375, v358, 0);
                  v385 = objc_msgSend_selectionPathWithPathType_arguments_(TSCHSelectionPath, v381, v382, v383, v384, v363, v380);

                  blockCopy[2](blockCopy, v385, &v837);
                  v348 = v781;
                  v340 = MEMORY[0x277CBF398];
                }

                if (*&v817.a)
                {
                  free(*&v817.a);
                }

                if (v837)
                {

                  goto LABEL_215;
                }
              }

              v354 = objc_msgSend_countByEnumeratingWithState_objects_count_(v348, v353, v361, v362, v355, &v804, v845, 16);
            }

            while (v354);
          }

          v341 = v754 + 1;
          v329 = v772;
          v339 = v745;
        }

        while (v754 + 1 != obja);
        v335 = objc_msgSend_countByEnumeratingWithState_objects_count_(v772, v334, v336, v337, v338, &v808, v846, 16);
      }

      while (v335);
    }

    v802 = 0u;
    v803 = 0u;
    v800 = 0u;
    v801 = 0u;
    v746 = v772;
    v390 = objc_msgSend_countByEnumeratingWithState_objects_count_(v746, v386, v387, v388, v389, &v800, v844, 16);
    if (v390)
    {
      v755 = *v801;
      p_superclass = TSCHChartRadialElementsRenderer.superclass;
      do
      {
        objb = v390;
        for (jj = 0; jj != objb; jj = jj + 1)
        {
          if (*v801 != v755)
          {
            objc_enumerationMutation(v746);
          }

          v397 = *(*(&v800 + 1) + 8 * jj);
          v760 = objc_msgSend_seriesType(v397, v391, v392, v393, v394);
          v402 = objc_msgSend_elementBuilder(v760, v398, v399, v400, v401);
          v821[0] = 0;
          v820[0] = 0;
          v799 = 0;
          v407 = objc_msgSend_countOfLabelsForSeries_forGroups_forBodyLayout_outNewTransforms_outNewElementSizes_outNewClipRects_outNewStrings_(v402, v403, v404, v405, v406, v397, 0, selfCopy, v821, &v799, v820, 0);
          v408 = v821[0];
          v409 = v820[0];
          if (v821[0] && v820[0] && v407)
          {
            v410 = 0;
            v411 = 0;
            v412 = 0;
            v413 = 1;
            while ((v837 & 1) == 0)
            {
              recta = *&v408[v410];
              v819 = *&v408[v410 + 32];
              *&v816.tx = v819;
              memset(&v817, 0, sizeof(v817));
              *&v816.a = recta.origin;
              *&v816.c = recta.size;
              CGAffineTransformInvert(&v817, &v816);
              v773 = v817.a;
              v782 = v817.b;
              v414 = v817.c;
              v415 = v817.d;
              v416 = v817.tx;
              v417 = v817.ty;
              objc_msgSend_labelRectFromClipRect_elementSize_(p_superclass + 319, v418, *&v409[v411], *&v409[v411 + 8], *&v409[v411 + 16], *&v409[v411 + 24], *(v799 + v412), *(v799 + v412 + 8));
              v419 = v864.origin.x;
              v420 = v864.origin.y;
              v421 = v864.size.width;
              v422 = v864.size.height;
              if (!CGRectIsNull(v864))
              {
                v858.x = v416 + elements.y * v414 + v773 * elements.x;
                v858.y = v417 + elements.y * v415 + v782 * elements.x;
                v865.origin.x = v419;
                v865.origin.y = v420;
                v865.size.width = v421;
                v865.size.height = v422;
                if (CGRectContainsPoint(v865, v858))
                {
                  v427 = objc_msgSend_seriesIndex(v397, v423, v424, v425, v426);
                  v432 = objc_msgSend_seriesValueLabelSelectionPathWithSeriesIndex_(TSCHSelectionPath, v428, v429, v430, v431, v427);
                  blockCopy[2](blockCopy, v432, &v837);

                  p_superclass = (TSCHChartRadialElementsRenderer + 8);
                }
              }

              v408 = v821[0];
              v409 = v820[0];
              if (v821[0])
              {
                if (v820[0])
                {
                  v412 += 16;
                  v411 += 32;
                  v410 += 48;
                  v569 = v413++ >= v407;
                  if (!v569)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_99;
            }
          }

          else
          {
LABEL_99:
            if (!v408)
            {
              goto LABEL_101;
            }
          }

          free(v408);
          v409 = v820[0];
LABEL_101:
          if (v409)
          {
            free(v409);
          }

          if (v799)
          {
            free(v799);
          }

          v433 = v837;

          if (v433)
          {

            goto LABEL_215;
          }

          p_superclass = (TSCHChartRadialElementsRenderer + 8);
        }

        v390 = objc_msgSend_countByEnumeratingWithState_objects_count_(v746, v391, v392, v393, v394, &v800, v844, 16);
      }

      while (v390);
    }

    v821[0] = 0;
    v820[0] = 0;
    v799 = 0;
    v438 = objc_msgSend_countOfSummaryLabelsForGroups_forBodyLayout_outNewTransforms_outNewElementSizes_outNewClipRects_outNewStrings_(v763, v434, v435, v436, v437, 0, selfCopy, v821, v820, &v799, 0);
    v439 = v821[0];
    if (v821[0])
    {
      v440 = v799;
      if (v799)
      {
        v441 = v438;
        if (v438)
        {
          v442 = 0;
          v443 = 0;
          v444 = 0;
          v445 = 1;
          do
          {
            if (v837)
            {
              break;
            }

            v446 = &v439[v442];
            recta = *v446;
            v819 = *(v446 + 2);
            *&v816.tx = v819;
            memset(&v817, 0, sizeof(v817));
            *&v816.a = recta.origin;
            *&v816.c = recta.size;
            CGAffineTransformInvert(&v817, &v816);
            v774 = v817.a;
            v783 = v817.b;
            v447 = v817.c;
            v448 = v817.d;
            v449 = v817.tx;
            v450 = v817.ty;
            objc_msgSend_labelRectFromClipRect_elementSize_(TSCHRenderUtilities, v451, *&v440[v443], *&v440[v443 + 8], *&v440[v443 + 16], *&v440[v443 + 24], *(v820[0] + v444), *(v820[0] + v444 + 8));
            v452 = v866.origin.x;
            v453 = v866.origin.y;
            v454 = v866.size.width;
            v455 = v866.size.height;
            if (!CGRectIsNull(v866))
            {
              v859.x = v449 + elements.y * v447 + v774 * elements.x;
              v859.y = v450 + elements.y * v448 + v783 * elements.x;
              v867.origin.x = v452;
              v867.origin.y = v453;
              v867.size.width = v454;
              v867.size.height = v455;
              if (CGRectContainsPoint(v867, v859))
              {
                v460 = objc_msgSend_seriesValueSummaryLabelSelectionPath(TSCHSelectionPath, v456, v457, v458, v459);
                blockCopy[2](blockCopy, v460, &v837);
              }
            }

            v439 = v821[0];
            if (!v821[0])
            {
              break;
            }

            v440 = v799;
            if (!v799)
            {
              break;
            }

            v444 += 16;
            v443 += 32;
            v442 += 48;
            v569 = v445++ >= v441;
          }

          while (!v569);
        }
      }
    }

    v797 = 0u;
    v798 = 0u;
    v795 = 0u;
    v796 = 0u;
    v761 = v746;
    v465 = objc_msgSend_countByEnumeratingWithState_objects_count_(v761, v461, v462, v463, v464, &v795, v843, 16);
    if (v465)
    {
      v768 = *v796;
      do
      {
        v775 = v465;
        for (kk = 0; kk != v775; ++kk)
        {
          if (*v796 != v768)
          {
            objc_enumerationMutation(v761);
          }

          v471 = *(*(&v795 + 1) + 8 * kk);
          v472 = objc_msgSend_seriesType(v471, v466, v467, v468, v469);
          v477 = objc_msgSend_elementBuilder(v472, v473, v474, v475, v476);
          v480 = objc_msgSend_hitCheckPoint_inSeries_withBodyLayout_(v477, v478, elements.x, elements.y, v479, v471, selfCopy);
          if (v480 == -1)
          {
            goto LABEL_131;
          }

          if (v480 == 2)
          {
            v485 = objc_msgSend_seriesIndex(v471, v481, v482, v483, v484);
            v490 = objc_msgSend_seriesSymbolsSelectionPathWithSeriesIndex_(TSCHSelectionPath, v486, v487, v488, v489, v485);
            blockCopy[2](blockCopy, v490, &v837);

LABEL_129:
            v491 = objc_msgSend_seriesIndex(v471, v481, v482, v483, v484);
            v496 = objc_msgSend_seriesSelectionPathWithSeriesIndex_(TSCHSelectionPath, v492, v493, v494, v495, v491);
            blockCopy[2](blockCopy, v496, &v837);

            goto LABEL_130;
          }

          if ((v480 - 1) <= 1)
          {
            goto LABEL_129;
          }

          if (!v480)
          {
            objc_msgSend_hitCheckPoint_inSeries_withBodyLayout_(v477, v481, elements.x, elements.y, v484, v471, selfCopy);
            recta.origin.x = 0.0;
            v501 = objc_msgSend_model(v471, v497, v498, v499, v500);
            v506 = objc_msgSend_chartInfo(v501, v502, v503, v504, v505);
            v511 = objc_msgSend_chartType(v506, v507, v508, v509, v510);
            v516 = objc_msgSend_supportsInnerRadius(v511, v512, v513, v514, v515);

            v521 = &unk_28856ED30;
            if (v516)
            {
              v522 = objc_msgSend_model(v471, v517, v518, v519, v520);
              v527 = objc_msgSend_chartInfo(v522, v523, v524, v525, v526);
              v521 = objc_msgSend_valueForProperty_(v527, v528, v529, v530, v531, 1103);

              if (objc_msgSend_compare_(v521, v532, v533, v534, v535, &unk_28856ED40) == 1)
              {

                v521 = &unk_28856ED40;
              }
            }

            v536 = objc_msgSend_countOfHitCheckRegionsInSeries_forGroups_forBodyLayout_outNewElementPaths_outSelectionKnobLocations_withInnerRadius_(v477, v517, v518, v519, v520, v471, 0, selfCopy, &recta, 0, v521);
            v537 = recta.origin.x;
            v538 = *&recta.origin.x != 0;
            if (*&recta.origin.x && v536)
            {
              v756 = v521;
              v539 = v536 - 1;
              v540 = 1;
              do
              {
                v541 = *(*&v537 + 8 * v539);
                if ((v837 & 1) == 0 && CGPathContainsPointSafe())
                {
                  v546 = objc_msgSend_seriesType(v471, v542, v543, v544, v545);
                  v551 = v546;
                  if (v539 == 3 && (v837 & 1) == 0 && v536 == 4)
                  {
                    if (objc_msgSend_supportsSymbolDrawing(v546, v547, v548, v549, v550))
                    {
                      v552 = objc_msgSend_defaultSymbolType(v551, v547, v548, v549, v550);
                      if (objc_msgSend_intValueForProperty_defaultValue_(v471, v553, v554, v555, v556, 1190, v552))
                      {
                        v557 = objc_msgSend_seriesIndex(v471, v547, v548, v549, v550);
                        v562 = objc_msgSend_seriesSymbolsSelectionPathWithSeriesIndex_(TSCHSelectionPath, v558, v559, v560, v561, v557);
                        blockCopy[2](blockCopy, v562, &v837);
                      }
                    }
                  }

                  v563 = objc_msgSend_seriesIndex(v471, v547, v548, v549, v550);
                  v568 = objc_msgSend_seriesSelectionPathWithSeriesIndex_(TSCHSelectionPath, v564, v565, v566, v567, v563);
                  blockCopy[2](blockCopy, v568, &v837);
                }

                CGPathRelease(v541);
                v537 = recta.origin.x;
                v538 = *&recta.origin.x != 0;
                if (*&recta.origin.x)
                {
                  v569 = v540 >= v536;
                }

                else
                {
                  v569 = 1;
                }

                ++v540;
                --v539;
              }

              while (!v569);
              v521 = v756;
            }

            if (v538)
            {
              free(*&v537);
            }
          }

LABEL_130:
          if (v837)
          {

            goto LABEL_215;
          }

LABEL_131:
        }

        v465 = objc_msgSend_countByEnumeratingWithState_objects_count_(v761, v466, v467, v468, v469, &v795, v843, 16);
      }

      while (v465);
    }

    v793 = 0u;
    v794 = 0u;
    v791 = 0u;
    v792 = 0u;
    v573 = objc_msgSend_model(selfCopy, v570, 0.0, v571, v572);
    v757 = objc_msgSend_axisList(v573, v574, v575, v576, v577);

    v583 = objc_msgSend_countByEnumeratingWithState_objects_count_(v757, v578, v579, v580, v581, &v791, v842, 16);
    if (v583)
    {
      v769 = *v792;
      while (2)
      {
        v587 = 0;
        v762 = v583;
        do
        {
          if (*v792 != v769)
          {
            objc_enumerationMutation(v757);
          }

          v588 = *(*(&v791 + 1) + 8 * v587);
          recta.origin.x = 0.0;
          v589 = objc_msgSend_countOfGridLinesInBody_forAxis_minor_outNewLineDescriptors_(v763, v582, v584, v585, v586, selfCopy, v588, 0, &recta);
          objc_msgSend_objectValueForProperty_(v588, v590, v591, v592, v593, 1038);
          v784 = v776 = v587;
          objc_msgSend_width(v784, v594, v595, v596, v597);
          LOBYTE(v817.a) = 0;
          if (v589)
          {
            v599 = 0;
            v600 = v598 * 0.5;
            v601 = -(v598 * 0.5);
            if (v600 >= 1.0)
            {
              v602 = -1.0;
            }

            else
            {
              v602 = v601;
            }

            v603 = 1;
            do
            {
              TSURectWithPoints();
              v869 = CGRectInset(v868, v602, v602);
              if (CGRectContainsPoint(v869, elements))
              {
                v608 = objc_msgSend_gridLineType(TSCHSelectionPathType, v604, v605, v606, v607);
                v613 = objc_msgSend_axisID(v588, v609, v610, v611, v612);
                v841[0] = v613;
                v841[1] = MEMORY[0x277CBEC28];
                v618 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v614, v615, v616, v617, v841, 2);
                v623 = objc_msgSend_selectionPathWithPathType_arguments_(TSCHSelectionPath, v619, v620, v621, v622, v608, v618);

                (blockCopy)[2](blockCopy, v623, &v817);
              }

              if (LOBYTE(v817.a))
              {
                break;
              }

              v599 += 32;
              v569 = v603++ >= v589;
            }

            while (!v569);
          }

          free(*&recta.origin.x);
          recta.origin.x = 0.0;
          a_low = LOBYTE(v817.a);

          if (a_low)
          {
LABEL_213:

            goto LABEL_215;
          }

          recta.origin.x = 0.0;
          v629 = objc_msgSend_countOfGridLinesInBody_forAxis_minor_outNewLineDescriptors_(v763, v625, v626, v627, v628, selfCopy, v588, 1, &recta);
          v634 = objc_msgSend_objectValueForProperty_(v588, v630, v631, v632, v633, 1041);
          objc_msgSend_width(v634, v635, v636, v637, v638);
          LOBYTE(v817.a) = 0;
          if (v629)
          {
            v785 = v634;
            v640 = 0;
            v641 = v639 * 0.5;
            v642 = -(v639 * 0.5);
            if (v641 >= 1.0)
            {
              v643 = -1.0;
            }

            else
            {
              v643 = v642;
            }

            v644 = 1;
            do
            {
              TSURectWithPoints();
              v871 = CGRectInset(v870, v643, v643);
              if (CGRectContainsPoint(v871, elements))
              {
                v649 = objc_msgSend_gridLineType(TSCHSelectionPathType, v645, v646, v647, v648);
                v654 = objc_msgSend_axisID(v588, v650, v651, v652, v653);
                v840[0] = v654;
                v840[1] = MEMORY[0x277CBEC38];
                v659 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v655, v656, v657, v658, v840, 2);
                v664 = objc_msgSend_selectionPathWithPathType_arguments_(TSCHSelectionPath, v660, v661, v662, v663, v649, v659);

                (blockCopy)[2](blockCopy, v664, &v817);
              }

              v665 = LOBYTE(v817.a);
              if (LOBYTE(v817.a))
              {
                break;
              }

              v640 += 32;
              v569 = v644++ >= v629;
            }

            while (!v569);

            if (v665)
            {
              goto LABEL_213;
            }
          }

          else
          {
          }

          v587 = v776 + 1;
        }

        while ((v776 + 1) != v762);
        v583 = objc_msgSend_countByEnumeratingWithState_objects_count_(v757, v582, v584, v585, v586, &v791, v842, 16);
        if (v583)
        {
          continue;
        }

        break;
      }
    }

    v789 = 0u;
    v790 = 0u;
    v787 = 0u;
    v788 = 0u;
    v669 = objc_msgSend_model(selfCopy, v666, 0.0, v667, v668);
    v674 = objc_msgSend_axisList(v669, v670, v671, v672, v673);

    v680 = objc_msgSend_countByEnumeratingWithState_objects_count_(v674, v675, v676, v677, v678, &v787, v839, 16);
    if (v680)
    {
      v682 = *v788;
      v683 = MEMORY[0x277CBF2C0];
      while (2)
      {
        for (mm = 0; mm != v680; ++mm)
        {
          if (*v788 != v682)
          {
            objc_enumerationMutation(v674);
          }

          v685 = *(*(&v787 + 1) + 8 * mm);
          LOBYTE(v816.a) = 0;
          v686 = *(v683 + 16);
          recta.origin = *v683;
          recta.size = v686;
          v819 = *(v683 + 32);
          if (objc_msgSend_hasAxisLineInBody_forAxis_outTransform_outLine_(v763, v679, *&v819, v686.width, v681, selfCopy, v685, &recta, &v817))
          {
            v689 = objc_msgSend_model(v685, v679, v687, v688, v681);
            v694 = objc_msgSend_chartInfo(v689, v690, v691, v692, v693);
            v699 = objc_msgSend_objectValueForProperty_(v694, v695, v696, v697, v698, 1080);

            objc_msgSend_width(v699, v700, v701, v702, v703);
            v705 = v704;
            v706 = v704 * 0.5;
            TSURectWithPoints();
            v711 = -(v705 * 0.5);
            if (v706 >= 1.0)
            {
              v711 = -1.0;
            }

            v872 = CGRectInset(*&v707, v711, v711);
            if (CGRectContainsPoint(v872, elements))
            {
              v716 = objc_msgSend_axisLineType(TSCHSelectionPathType, v712, v713, v714, v715);
              v721 = objc_msgSend_axisID(v685, v717, v718, v719, v720);
              v838 = v721;
              v726 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v722, v723, v724, v725, &v838, 1);
              v731 = objc_msgSend_selectionPathWithPathType_arguments_(TSCHSelectionPath, v727, v728, v729, v730, v716, v726);

              (blockCopy)[2](blockCopy, v731, &v816);
            }
          }

          if (LOBYTE(v816.a))
          {

            goto LABEL_215;
          }
        }

        v680 = objc_msgSend_countByEnumeratingWithState_objects_count_(v674, v679, v687, v688, v681, &v787, v839, 16);
        if (v680)
        {
          continue;
        }

        break;
      }
    }

    if (objc_msgSend_layoutSpacePointIsInChartBody_(selfCopy, v732, elements.x, elements.y, v733))
    {
      LOBYTE(recta.origin.x) = 0;
      v738 = objc_msgSend_chartBodyType(TSCHSelectionPathType, v734, v735, v736, v737);
      v743 = objc_msgSend_selectionPathWithPathType_arguments_(TSCHSelectionPath, v739, v740, v741, v742, v738, 0);

      (blockCopy)[2](blockCopy, v743, &recta);
    }

LABEL_215:
  }
}

- (BOOL)layoutSpacePointIsInChartBody:(CGPoint)body
{
  y = body.y;
  x = body.x;
  objc_msgSend_rootedLayoutRect(self, a2, body.x, body.y, v3);
  v10 = x;
  v11 = y;

  return CGRectContainsPoint(*&v6, *&v10);
}

- (id)p_valueLabelSubselectionKnobsForSeries:(id)series
{
  seriesCopy = series;
  v9 = objc_msgSend_array(MEMORY[0x277CBEB18], v5, v6, v7, v8);
  v14 = objc_msgSend_seriesType(seriesCopy, v10, v11, v12, v13);
  v19 = objc_msgSend_elementBuilder(v14, v15, v16, v17, v18);
  v45 = 0;
  v46 = 0;
  v44 = 0;
  v25 = objc_msgSend_countOfLabelsForSeries_forGroups_forBodyLayout_outNewTransforms_outNewElementSizes_outNewClipRects_outNewStrings_(v19, v20, v21, v22, v23, seriesCopy, 0, self, &v46, &v44, &v45, 0);
  v26 = v45;
  v27 = v46;
  if (v46 && v45 && v25)
  {
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 1;
    do
    {
      v32 = &v27[v28];
      v33 = *(v32 + 1);
      v41 = *v32;
      v42 = v33;
      v43 = *(v32 + 2);
      objc_msgSend_labelRectFromClipRect_elementSize_(TSCHRenderUtilities, v24, *&v26[v29], *&v26[v29 + 8], *&v26[v29 + 16], *&v26[v29 + 24], *&v44[v30], *&v44[v30 + 8]);
      v40[0] = v41;
      v40[1] = v42;
      v40[2] = v43;
      objc_msgSend_addTextSubselectionKnobsToArray_rect_transform_(TSCHRenderUtilities, v34, v35, v36, v37, v9, v40);
      v26 = v45;
      v27 = v46;
      if (!v46)
      {
        break;
      }

      if (!v45)
      {
        break;
      }

      v30 += 16;
      v29 += 32;
      v28 += 48;
    }

    while (v31++ < v25);
  }

  if (v27)
  {
    free(v27);
    v26 = v45;
  }

  if (v26)
  {
    free(v26);
  }

  if (v44)
  {
    free(v44);
  }

  return v9;
}

- (id)p_valueSummaryLabelSubselectionKnobs
{
  v6 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2, v3, v4);
  v11 = objc_msgSend_model(self, v7, v8, v9, v10);
  v16 = objc_msgSend_seriesList(v11, v12, v13, v14, v15);
  v21 = objc_msgSend_lastObject(v16, v17, v18, v19, v20);
  v26 = objc_msgSend_seriesType(v21, v22, v23, v24, v25);
  v31 = objc_msgSend_elementBuilder(v26, v27, v28, v29, v30);

  v57 = 0;
  v58 = 0;
  v56 = 0;
  v37 = objc_msgSend_countOfSummaryLabelsForGroups_forBodyLayout_outNewTransforms_outNewElementSizes_outNewClipRects_outNewStrings_(v31, v32, v33, v34, v35, 0, self, &v58, &v56, &v57, 0);
  v38 = v57;
  v39 = v58;
  if (v58 && v57 && v37)
  {
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 1;
    do
    {
      v44 = &v39[v40];
      v45 = *(v44 + 1);
      v53 = *v44;
      v54 = v45;
      v55 = *(v44 + 2);
      objc_msgSend_labelRectFromClipRect_elementSize_(TSCHRenderUtilities, v36, *&v38[v41], *&v38[v41 + 8], *&v38[v41 + 16], *&v38[v41 + 24], *&v56[v42], *&v56[v42 + 8]);
      v52[0] = v53;
      v52[1] = v54;
      v52[2] = v55;
      objc_msgSend_addTextSubselectionKnobsToArray_rect_transform_(TSCHRenderUtilities, v46, v47, v48, v49, v6, v52);
      v38 = v57;
      v39 = v58;
      if (!v58)
      {
        break;
      }

      if (!v57)
      {
        break;
      }

      v42 += 16;
      v41 += 32;
      v40 += 48;
    }

    while (v43++ < v37);
  }

  if (v39)
  {
    free(v39);
    v38 = v57;
  }

  if (v38)
  {
    free(v38);
  }

  if (v56)
  {
    free(v56);
  }

  return v6;
}

- (id)p_errorBarSubselectionKnobsForSeries:(id)series axisID:(id)d
{
  seriesCopy = series;
  dCopy = d;
  v12 = objc_msgSend_seriesType(seriesCopy, v8, v9, v10, v11);
  v17 = objc_msgSend_elementBuilder(v12, v13, v14, v15, v16);
  v49 = 0;
  objc_msgSend_rootedDrawingRect(self, v18, v19, v20, v21);
  v52 = CGRectInset(v51, -0.01, -0.01);
  x = v52.origin.x;
  y = v52.origin.y;
  width = v52.size.width;
  height = v52.size.height;
  v27 = objc_msgSend_countOfErrorBarsInSeries_forGroups_forAxisID_forBodyLayout_outClipRect_outNewErrorBarDescriptors_(v17, v26, v52.origin.x, v52.origin.y, v52.size.width, seriesCopy, 0, dCopy, self, 0, &v49);
  v32 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v28, v29, v30, v31, v27);
  if (v27)
  {
    v33 = 0;
    do
    {
      v53.origin.x = x;
      v53.origin.y = y;
      v53.size.width = width;
      v53.size.height = height;
      if (CGRectContainsPoint(v53, *(v49 + v33)))
      {
        v36 = objc_msgSend_valueWithCGPoint_(MEMORY[0x277CCAE60], v34, *(v49 + v33), *(v49 + v33 + 8), v35);
        objc_msgSend_addObject_(v32, v37, v38, v39, v40, v36);
      }

      v54.origin.x = x;
      v54.origin.y = y;
      v54.size.width = width;
      v54.size.height = height;
      if (CGRectContainsPoint(v54, *(v49 + v33 + 16)))
      {
        v43 = objc_msgSend_valueWithCGPoint_(MEMORY[0x277CCAE60], v41, *(v49 + v33 + 16), *(v49 + v33 + 24), v42);
        objc_msgSend_addObject_(v32, v44, v45, v46, v47, v43);
      }

      v33 += 48;
      --v27;
    }

    while (v27);
  }

  free(v49);

  return v32;
}

- (id)p_trendLineSubselectionKnobsForSeries:(id)series
{
  v78 = *MEMORY[0x277D85DE8];
  seriesCopy = series;
  v9 = objc_msgSend_trendLineData(seriesCopy, v5, v6, v7, v8);

  if (!v9)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "[TSCHChartBodyLayoutItem p_trendLineSubselectionKnobsForSeries:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartBodyLayoutItem.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v22, v23, v24, v15, v20, 1233, 0, "invalid nil value for '%{public}s'", "series.trendLineData");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  }

  v29 = objc_msgSend_seriesType(seriesCopy, v10, v11, v12, v13);
  v34 = objc_msgSend_elementBuilder(v29, v30, v31, v32, v33);
  v75 = 0;
  objc_msgSend_trendlineElementForSeries_forBodyLayout_outElementBounds_outElementClipRect_outElementPath_(v34, v35, v36, v37, v38, seriesCopy, self, 0, 0, &v75);
  v39 = v75;
  v45 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v40, v41, v42, v43, 2);
  if (v39 && (objc_msgSend_isEmpty(v39, v44, v46, v47, v48) & 1) == 0)
  {
    v76[0] = xmmword_2764D6AF0;
    v76[1] = unk_2764D6B00;
    v76[2] = xmmword_2764D6B10;
    *v77 = *dbl_2764D6B20;
    objc_msgSend_elementAtIndex_allPoints_(v39, v49, NAN, dbl_2764D6B20[0], v50, 0, v76);
    v53 = objc_msgSend_valueWithCGPoint_(MEMORY[0x277CCAE60], v51, *v76, *(v76 + 1), v52);
    objc_msgSend_addObject_(v45, v54, v55, v56, v57, v53);

    v62 = objc_msgSend_elementCount(v39, v58, v59, v60, v61);
    objc_msgSend_elementAtIndex_allPoints_(v39, v63, v64, v65, v66, v62 - 1, v76);
    v69 = objc_msgSend_valueWithCGPoint_(MEMORY[0x277CCAE60], v67, v77[0], v77[1], v68);
    objc_msgSend_addObject_(v45, v70, v71, v72, v73, v69);
  }

  return v45;
}

- (id)p_trendLineEquationSubselectionKnobsForSeries:(id)series
{
  seriesCopy = series;
  v9 = objc_msgSend_array(MEMORY[0x277CBEB18], v5, v6, v7, v8);
  v14 = objc_msgSend_seriesType(seriesCopy, v10, v11, v12, v13);
  v19 = objc_msgSend_elementBuilder(v14, v15, v16, v17, v18);
  objc_opt_class();
  v24 = objc_msgSend_parent(self, v20, v21, v22, v23);
  v25 = TSUDynamicCast();

  v28 = *(MEMORY[0x277CBF398] + 16);
  v40 = *MEMORY[0x277CBF398];
  v41 = v28;
  v29 = *MEMORY[0x277CBF3A8];
  v38 = 0u;
  v39 = v29;
  v36 = 0u;
  v37 = 0u;
  if (v19)
  {
    objc_msgSend_transformForRenderingTrendlineTextForSeries_forAreaLayout_outElementSize_outClipRect_outParagraphStyle_outNewString_(v19, 0.0, *&v29, v27);
  }

  objc_msgSend_labelRectFromClipRect_elementSize_(TSCHRenderUtilities, v26, *&v40, *(&v40 + 1), *&v41, *(&v41 + 1), v39);
  v35[0] = v36;
  v35[1] = v37;
  v35[2] = v38;
  objc_msgSend_addTextSubselectionKnobsToArray_rect_transform_(TSCHRenderUtilities, v30, v31, v32, v33, v9, v35);

  return v9;
}

- (id)p_trendLineR2SubselectionKnobsForSeries:(id)series
{
  seriesCopy = series;
  v9 = objc_msgSend_array(MEMORY[0x277CBEB18], v5, v6, v7, v8);
  v14 = objc_msgSend_seriesType(seriesCopy, v10, v11, v12, v13);
  v19 = objc_msgSend_elementBuilder(v14, v15, v16, v17, v18);
  objc_opt_class();
  v24 = objc_msgSend_parent(self, v20, v21, v22, v23);
  v25 = TSUDynamicCast();

  v28 = *(MEMORY[0x277CBF398] + 16);
  v40 = *MEMORY[0x277CBF398];
  v41 = v28;
  v29 = *MEMORY[0x277CBF3A8];
  v38 = 0u;
  v39 = v29;
  v36 = 0u;
  v37 = 0u;
  if (v19)
  {
    objc_msgSend_transformForRenderingR2TextForSeries_forAreaLayout_outElementSize_outClipRect_outParagraphStyle_outString_(v19, 0.0, *&v29, v27);
  }

  objc_msgSend_labelRectFromClipRect_elementSize_(TSCHRenderUtilities, v26, *&v40, *(&v40 + 1), *&v41, *(&v41 + 1), v39);
  v35[0] = v36;
  v35[1] = v37;
  v35[2] = v38;
  objc_msgSend_addTextSubselectionKnobsToArray_rect_transform_(TSCHRenderUtilities, v30, v31, v32, v33, v9, v35);

  return v9;
}

- (id)p_refLineSubselectionKnobsForStyleSwapIndex:(unint64_t)index
{
  v94[2] = *MEMORY[0x277D85DE8];
  v8 = objc_msgSend_axisIDFromStyleSwapOrStyleOwnerIndex_(TSCHReferenceLine, a2, v3, v4, v5);
  v13 = objc_msgSend_model(self, v9, v10, v11, v12);
  v18 = objc_msgSend_referenceLineForStyleSwapIndex_(v13, v14, v15, v16, v17, index);

  if (!v18)
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "[TSCHChartBodyLayoutItem p_refLineSubselectionKnobsForStyleSwapIndex:]");
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartBodyLayoutItem.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v30, v31, v32, v33, v24, v29, 1295, 0, "invalid nil value for '%{public}s'", "refLine");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36, v37);
  }

  v38 = objc_msgSend_model(v18, v19, v20, v21, v22);
  v43 = objc_msgSend_seriesList(v38, v39, v40, v41, v42);
  v48 = objc_msgSend_firstObject(v43, v44, v45, v46, v47);
  v53 = objc_msgSend_seriesType(v48, v49, v50, v51, v52);
  v58 = objc_msgSend_elementBuilder(v53, v54, v55, v56, v57);

  v93 = 0;
  v63 = objc_msgSend_model(self, v59, v60, v61, v62);
  v92 = 0;
  v68 = objc_msgSend_countOfReferenceLinesForAxisID_model_forBodyLayout_outClipRect_outNewClipRects_outNewLineDescriptors_outReferenceLines_includeOutsideChartBodyBounds_outOutsideChartBodyBounds_(v58, v64, v65, v66, v67, v8, v63, self, 0, 0, &v93, &v92, 0, 0);
  v69 = v92;

  v74 = objc_msgSend_indexOfObjectIdenticalTo_(v69, v70, v71, v72, v73, v18);
  v77 = 0;
  if (v74 != 0x7FFFFFFFFFFFFFFFLL && v74 < v68)
  {
    v78 = (v93 + 32 * v74);
    v79 = v78[2];
    v80 = v78[3];
    v81 = objc_msgSend_valueWithCGPoint_(MEMORY[0x277CCAE60], v75, *v78, v78[1], v76);
    v94[0] = v81;
    v84 = objc_msgSend_valueWithCGPoint_(MEMORY[0x277CCAE60], v82, v79, v80, v83);
    v94[1] = v84;
    v77 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v85, v86, v87, v88, v94, 2);
  }

  v89 = MEMORY[0x277CBEBF8];
  if (v77)
  {
    v89 = v77;
  }

  v90 = v89;

  free(v93);

  return v90;
}

- (id)subselectionKnobPositionsForSelection:(id)selection
{
  v290 = *MEMORY[0x277D85DE8];
  v288.receiver = self;
  v288.super_class = TSCHChartBodyLayoutItem;
  selectionCopy = selection;
  v3 = [(TSCHChartLayoutItem *)&v288 subselectionKnobPositionsForSelection:?];
  v272 = v3;
  if (v3)
  {
    v278 = objc_msgSend_mutableCopy(v3, v4, v5, v6, v7);
  }

  else
  {
    v278 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v4, v5, v6, v7);
  }

  v12 = objc_msgSend_model(self, v8, v9, v10, v11);
  v274 = objc_msgSend_seriesList(v12, v13, v14, v15, v16);

  v275 = objc_msgSend_count(v274, v17, v18, v19, v20);
  v286 = 0u;
  v287 = 0u;
  v284 = 0u;
  v285 = 0u;
  obj = selectionCopy;
  v280 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v21, v22, v23, v24, &v284, v289, 16);
  if (v280)
  {
    v279 = *v285;
    do
    {
      v282 = 0;
      do
      {
        if (*v285 != v279)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v284 + 1) + 8 * v282);
        v30 = objc_msgSend_pathType(v29, v25, v26, v27, v28);
        v35 = objc_msgSend_seriesType(TSCHSelectionPathType, v31, v32, v33, v34);
        if (objc_msgSend_isEqual_(v30, v36, v37, v38, v39, v35))
        {
          isEqual = 1;
        }

        else
        {
          v44 = objc_msgSend_pathType(v29, v40, v41, v42, v43);
          v49 = objc_msgSend_seriesSymbolType(TSCHSelectionPathType, v45, v46, v47, v48);
          isEqual = objc_msgSend_isEqual_(v44, v50, v51, v52, v53, v49);
        }

        v58 = objc_msgSend_pathType(v29, v54, v55, v56, v57);
        v63 = objc_msgSend_seriesValueLabelType(TSCHSelectionPathType, v59, v60, v61, v62);
        v68 = objc_msgSend_isEqual_(v58, v64, v65, v66, v67, v63);

        v73 = objc_msgSend_pathType(v29, v69, v70, v71, v72);
        v78 = objc_msgSend_seriesValueSummaryLabelType(TSCHSelectionPathType, v74, v75, v76, v77);
        v83 = objc_msgSend_isEqual_(v73, v79, v80, v81, v82, v78);

        v88 = objc_msgSend_pathType(v29, v84, v85, v86, v87);
        v93 = objc_msgSend_errorBarType(TSCHSelectionPathType, v89, v90, v91, v92);
        v98 = objc_msgSend_isEqual_(v88, v94, v95, v96, v97, v93);

        v103 = objc_msgSend_pathType(v29, v99, v100, v101, v102);
        v108 = objc_msgSend_trendLineType(TSCHSelectionPathType, v104, v105, v106, v107);
        v113 = objc_msgSend_isEqual_(v103, v109, v110, v111, v112, v108);

        v118 = objc_msgSend_pathType(v29, v114, v115, v116, v117);
        v123 = objc_msgSend_trendLineEquationType(TSCHSelectionPathType, v119, v120, v121, v122);
        v128 = objc_msgSend_isEqual_(v118, v124, v125, v126, v127, v123);

        v133 = objc_msgSend_pathType(v29, v129, v130, v131, v132);
        v138 = objc_msgSend_trendLineR2Type(TSCHSelectionPathType, v134, v135, v136, v137);
        v143 = objc_msgSend_isEqual_(v133, v139, v140, v141, v142, v138);

        v148 = objc_msgSend_pathType(v29, v144, v145, v146, v147);
        v153 = objc_msgSend_referenceLineType(TSCHSelectionPathType, v149, v150, v151, v152);
        v158 = objc_msgSend_isEqual_(v148, v154, v155, v156, v157, v153);

        if ((isEqual | v68 | v98 | v113 | v128 | v143))
        {
          objc_opt_class();
          v163 = objc_msgSend_argumentAtIndex_(v29, v159, v160, v161, v162, 0);
          v164 = TSUDynamicCast();

          if (!v164)
          {
            goto LABEL_31;
          }

          v169 = objc_msgSend_unsignedIntegerValue(v164, v165, v166, v167, v168);
          if (v169 == 0x7FFFFFFFFFFFFFFFLL || v169 >= v275)
          {
            goto LABEL_31;
          }

          v174 = objc_msgSend_objectAtIndexedSubscript_(v274, v170, v171, v172, v173, v169);
          v179 = objc_msgSend_seriesType(v174, v175, v176, v177, v178);
          v184 = objc_msgSend_elementBuilder(v179, v180, v181, v182, v183);
          v189 = v184;
          if (isEqual)
          {
            v283 = 0;
            v190 = v184;
            v191 = v179;
            objc_msgSend_countOfHitCheckRegionsInSeries_forGroups_forBodyLayout_outNewElementPaths_outSelectionKnobLocations_forHighlightPath_(v184, v185, v186, v187, v188, v174, 0, self, 0, &v283, 0);
            v192 = v283;
            goto LABEL_26;
          }

          if (v68)
          {
            v190 = v184;
            v191 = v179;
            v192 = objc_msgSend_p_valueLabelSubselectionKnobsForSeries_(self, v185, v186, v187, v188, v174);
            goto LABEL_26;
          }

          if (v98)
          {
            v191 = v179;
            objc_opt_class();
            v249 = objc_msgSend_argumentAtIndex_(v29, v245, v246, v247, v248, 1);
            v190 = v189;
            v250 = TSUDynamicCast();

            v234 = objc_msgSend_p_errorBarSubselectionKnobsForSeries_axisID_(self, v251, v252, v253, v254, v174, v250);
          }

          else
          {
            if (v113)
            {
              v190 = v184;
              v191 = v179;
              v192 = objc_msgSend_p_trendLineSubselectionKnobsForSeries_(self, v185, v186, v187, v188, v174);
            }

            else if (v128)
            {
              v190 = v184;
              v191 = v179;
              v192 = objc_msgSend_p_trendLineEquationSubselectionKnobsForSeries_(self, v185, v186, v187, v188, v174);
            }

            else
            {
              if (!v143)
              {
                v255 = MEMORY[0x277D81150];
                v190 = v184;
                v191 = v179;
                v256 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v185, v186, v187, v188, "[TSCHChartBodyLayoutItem subselectionKnobPositionsForSelection:]");
                v261 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v257, v258, v259, v260, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartBodyLayoutItem.mm");
                objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v255, v262, v263, v264, v265, v256, v261, 1367, 0, "invalid selection path %@", v29);

                objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v266, v267, v268, v269);
                v234 = 0;
                goto LABEL_27;
              }

              v190 = v184;
              v191 = v179;
              v192 = objc_msgSend_p_trendLineR2SubselectionKnobsForSeries_(self, v185, v186, v187, v188, v174);
            }

LABEL_26:
            v234 = v192;
          }

LABEL_27:
          v235 = objc_msgSend_objectForKey_(v278, v193, v194, v195, v196, v29);
          v240 = objc_msgSend_arrayByAddingObjectsFromArray_(v234, v236, v237, v238, v239, v235);

          if (v240)
          {
            objc_msgSend_setObject_forKey_(v278, v241, v242, v243, v244, v240, v29);
          }

          goto LABEL_30;
        }

        if (!v158)
        {
          if (!v83)
          {
            goto LABEL_32;
          }

          v164 = objc_msgSend_p_valueSummaryLabelSubselectionKnobs(self, v25, v26, v27, v28);
          v229 = objc_msgSend_objectForKey_(v278, v225, v226, v227, v228, v29);
          v174 = objc_msgSend_arrayByAddingObjectsFromArray_(v164, v230, v231, v232, v233, v229);

          if (!v174)
          {
            goto LABEL_30;
          }

LABEL_20:
          objc_msgSend_setObject_forKey_(v278, v221, v222, v223, v224, v174, v29);
          goto LABEL_30;
        }

        objc_opt_class();
        v201 = objc_msgSend_argumentAtIndex_(v29, v197, v198, v199, v200, 0);
        v202 = TSUCheckedDynamicCast();
        v207 = objc_msgSend_unsignedIntegerValue(v202, v203, v204, v205, v206);

        v164 = objc_msgSend_p_refLineSubselectionKnobsForStyleSwapIndex_(self, v208, v209, v210, v211, v207);
        v216 = objc_msgSend_objectForKey_(v278, v212, v213, v214, v215, v29);
        v174 = objc_msgSend_arrayByAddingObjectsFromArray_(v164, v217, v218, v219, v220, v216);

        if (v174)
        {
          goto LABEL_20;
        }

LABEL_30:

LABEL_31:
LABEL_32:
        ++v282;
      }

      while (v280 != v282);
      v270 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v25, v26, v27, v28, &v284, v289, 16);
      v280 = v270;
    }

    while (v270);
  }

  return v278;
}

- (CGPath)newDragAndDropHighlightPathForSelection:(id)selection
{
  v406 = *MEMORY[0x277D85DE8];
  selectionCopy = selection;
  selfCopy = self;
  v404.receiver = self;
  v404.super_class = TSCHChartBodyLayoutItem;
  path = [(TSCHChartLayoutItem *)&v404 newDragAndDropHighlightPathForSelection:selectionCopy];
  if (objc_msgSend_count(selectionCopy, v5, v6, v7, v8))
  {
    if (path)
    {
      MutableCopy = CGPathCreateMutableCopy(path);
      CGPathRelease(path);
      path = MutableCopy;
    }

    else
    {
      path = CGPathCreateMutable();
    }

    v14 = objc_msgSend_model(selfCopy, v10, v11, v12, v13);
    v390 = objc_msgSend_numberOfSeries(v14, v15, v16, v17, v18);

    v402 = 0u;
    v403 = 0u;
    v400 = 0u;
    v401 = 0u;
    obj = selectionCopy;
    v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v19, v20, v21, v22, &v400, v405, 16);
    if (v23)
    {
      v391 = *v401;
      v388 = selectionCopy;
      do
      {
        v392 = v23;
        for (i = 0; i != v392; ++i)
        {
          if (*v401 != v391)
          {
            objc_enumerationMutation(obj);
          }

          v29 = *(*(&v400 + 1) + 8 * i);
          v30 = objc_msgSend_seriesType(TSCHSelectionPathType, v24, v25, v26, v27);
          v35 = objc_msgSend_pathType(v29, v31, v32, v33, v34);
          isEqual = objc_msgSend_isEqual_(v30, v36, v37, v38, v39, v35);

          if ((isEqual & 1) != 0 || (objc_msgSend_seriesSymbolType(TSCHSelectionPathType, v41, v42, v43, v44), v45 = objc_claimAutoreleasedReturnValue(), objc_msgSend_pathType(v29, v46, v47, v48, v49), v50 = objc_claimAutoreleasedReturnValue(), v55 = objc_msgSend_isEqual_(v45, v51, v52, v53, v54, v50), v50, v45, v55))
          {
            objc_opt_class();
            v64 = objc_msgSend_argumentAtIndex_(v29, v60, v61, v62, v63, 0);
            v65 = TSUDynamicCast();

            if (v65)
            {
              v70 = objc_msgSend_unsignedIntegerValue(v65, v66, v67, v68, v69);
              v75 = v70;
              if (v70 != 0x7FFFFFFFFFFFFFFFLL && v70 < v390)
              {
                v76 = objc_msgSend_model(selfCopy, v71, v72, v73, v74);
                v81 = objc_msgSend_seriesAtIndex_(v76, v77, v78, v79, v80, v75);

                v86 = objc_msgSend_seriesType(v81, v82, v83, v84, v85);
                v91 = objc_msgSend_elementBuilder(v86, v87, v88, v89, v90);
                v395[0] = 0;
                v97 = objc_msgSend_countOfHitCheckRegionsInSeries_forGroups_forBodyLayout_outNewElementPaths_outSelectionKnobLocations_forHighlightPath_(v91, v92, v93, v94, v95, v81, 0, selfCopy, v395, 0, 1);
                if (isEqual)
                {
                  v101 = 1;
                }

                else
                {
                  v102 = objc_msgSend_seriesType(v81, v96, v98, v99, v100);
                  v107 = objc_msgSend_supportsSymbolDrawing(v102, v103, v104, v105, v106);
                  if (v97 == 4)
                  {
                    v108 = v107;
                  }

                  else
                  {
                    v108 = 0;
                  }

                  v101 = v108 != 1 || (v109 = *(v395[0] + 3)) == 0 || CGPathIsEmpty(v109);
                }

                if (v97)
                {
                  for (j = 0; j != v97; ++j)
                  {
                    v111 = *(v395[0] + j);
                    if (v111)
                    {
                      IsEmpty = CGPathIsEmpty(*(v395[0] + j));
                      v113 = j == 3 || v101;
                      if (!IsEmpty && v113)
                      {
                        CGPathAddPathSafe();
                      }

                      CGPathRelease(v111);
                    }
                  }
                }

                free(v395[0]);

                selectionCopy = v388;
              }
            }
          }

          v114 = objc_msgSend_chartBodyType(TSCHSelectionPathType, v56, v57, v58, v59);
          v119 = objc_msgSend_pathType(v29, v115, v116, v117, v118);
          v124 = objc_msgSend_isEqual_(v114, v120, v121, v122, v123, v119);

          if (v124)
          {
            objc_msgSend_rootedLayoutRect(selfCopy, v125, v126, v127, v128);
            CGPathAddRectSafe();
          }

          if (!objc_msgSend_argumentsCount(v29, v125, v126, v127, v128))
          {
            v138 = 0;
LABEL_44:
            v139 = 0x7FFFFFFFFFFFFFFFLL;
            goto LABEL_45;
          }

          objc_opt_class();
          v137 = objc_msgSend_argumentAtIndex_(v29, v133, v134, v135, v136, 0);
          v138 = TSUDynamicCast();

          if (!v138)
          {
            goto LABEL_44;
          }

          v139 = objc_msgSend_unsignedIntegerValue(v138, v129, v130, v131, v132);
LABEL_45:
          v140 = objc_msgSend_trendLineEquationType(TSCHSelectionPathType, v129, v130, v131, v132);
          v145 = objc_msgSend_pathType(v29, v141, v142, v143, v144);
          if (!objc_msgSend_isEqual_(v140, v146, v147, v148, v149, v145) || !objc_msgSend_argumentsCount(v29, v150, v151, v152, v153))
          {
            goto LABEL_55;
          }

          if (v139 < v390)
          {
            v158 = objc_msgSend_model(selfCopy, v154, v155, v156, v157);
            v140 = objc_msgSend_seriesAtIndex_(v158, v159, v160, v161, v162, v139);

            v145 = objc_msgSend_seriesType(v140, v163, v164, v165, v166);
            v171 = objc_msgSend_elementBuilder(v145, v167, v168, v169, v170);
            objc_opt_class();
            v176 = objc_msgSend_parent(selfCopy, v172, v173, v174, v175);
            v177 = TSUDynamicCast();

            v179 = *(MEMORY[0x277CBF398] + 16);
            v399.origin = *MEMORY[0x277CBF398];
            v399.size = v179;
            v180 = *MEMORY[0x277CBF3A8];
            v397 = 0u;
            v398 = v180;
            *v395 = 0u;
            v396 = 0u;
            if (v171)
            {
              objc_msgSend_transformForRenderingTrendlineTextForSeries_forAreaLayout_outElementSize_outClipRect_outParagraphStyle_outNewString_(v171, 0.0, *&v180, v178);
            }

            if (!CGRectIsNull(v399) && (*MEMORY[0x277CBF3A8] != *&v398 || *(MEMORY[0x277CBF3A8] + 8) != *(&v398 + 1)))
            {
              TSURectWithSize();
              CGPathAddRectSafe();
            }

LABEL_55:
          }

          v181 = objc_msgSend_trendLineR2Type(TSCHSelectionPathType, v154, v155, v156, v157);
          v186 = objc_msgSend_pathType(v29, v182, v183, v184, v185);
          if (objc_msgSend_isEqual_(v181, v187, v188, v189, v190, v186) && objc_msgSend_argumentsCount(v29, v191, v192, v193, v194))
          {

            if (v139 >= v390)
            {
              goto LABEL_67;
            }

            v199 = objc_msgSend_model(selfCopy, v195, v196, v197, v198);
            v181 = objc_msgSend_seriesAtIndex_(v199, v200, v201, v202, v203, v139);

            objc_opt_class();
            v208 = objc_msgSend_parent(selfCopy, v204, v205, v206, v207);
            v186 = TSUDynamicCast();

            v213 = objc_msgSend_seriesType(v181, v209, v210, v211, v212);
            v218 = objc_msgSend_elementBuilder(v213, v214, v215, v216, v217);
            v220 = v218;
            v221 = *(MEMORY[0x277CBF398] + 16);
            v399.origin = *MEMORY[0x277CBF398];
            v399.size = v221;
            v222 = *MEMORY[0x277CBF3A8];
            v397 = 0u;
            v398 = v222;
            *v395 = 0u;
            v396 = 0u;
            if (v218)
            {
              objc_msgSend_transformForRenderingR2TextForSeries_forAreaLayout_outElementSize_outClipRect_outParagraphStyle_outString_(v218, 0.0, *&v222, v219);
            }

            if (!CGRectIsNull(v399) && (*MEMORY[0x277CBF3A8] != *&v398 || *(MEMORY[0x277CBF3A8] + 8) != *(&v398 + 1)))
            {
              TSURectWithSize();
              CGPathAddRectSafe();
            }
          }

LABEL_67:
          v223 = objc_msgSend_pathType(v29, v195, v196, v197, v198);
          v228 = objc_msgSend_gridLineType(TSCHSelectionPathType, v224, v225, v226, v227);
          if (objc_msgSend_isEqual_(v223, v229, v230, v231, v232, v228))
          {
            v237 = objc_msgSend_argumentsCount(v29, v233, v234, v235, v236) > 1;

            if (!v237)
            {
              goto LABEL_76;
            }

            v242 = objc_msgSend_model(selfCopy, v238, v239, v240, v241);
            v247 = objc_msgSend_seriesList(v242, v243, v244, v245, v246);
            v252 = objc_msgSend_firstObject(v247, v248, v249, v250, v251);
            v257 = objc_msgSend_seriesType(v252, v253, v254, v255, v256);
            v223 = objc_msgSend_elementBuilder(v257, v258, v259, v260, v261);

            v228 = objc_msgSend_argumentAtIndex_(v29, v262, v263, v264, v265, 0);
            objc_opt_class();
            v270 = objc_msgSend_argumentAtIndex_(v29, v266, v267, v268, v269, 1);
            v271 = TSUCheckedDynamicCast();
            v276 = objc_msgSend_BOOLValue(v271, v272, v273, v274, v275);

            v281 = objc_msgSend_model(selfCopy, v277, v278, v279, v280);
            v286 = objc_msgSend_axisForID_(v281, v282, v283, v284, v285, v228);

            v395[0] = 0;
            v291 = objc_msgSend_countOfGridLinesInBody_forAxis_minor_outNewLineDescriptors_(v223, v287, v288, v289, v290, selfCopy, v286, v276, v395);
            v296 = objc_msgSend_objectValueForProperty_(v286, v292, v293, v294, v295, 1038);
            objc_msgSend_width(v296, v297, v298, v299, v300);
            if (v291)
            {
              v302 = 0;
              if (v301 >= 1.0)
              {
                v303 = -1.0;
              }

              else
              {
                v303 = -v301;
              }

              do
              {
                TSURectWithPoints();
                CGRectInset(v407, v303, v303);
                CGPathAddRectSafe();
                v302 += 32;
                --v291;
              }

              while (v291);
            }

            free(v395[0]);
          }

LABEL_76:
          v304 = objc_msgSend_pathType(v29, v238, v239, v240, v241);
          v309 = objc_msgSend_axisLineType(TSCHSelectionPathType, v305, v306, v307, v308);
          if (objc_msgSend_isEqual_(v304, v310, v311, v312, v313, v309))
          {
            v318 = objc_msgSend_argumentsCount(v29, v314, v315, v316, v317) == 0;

            if (v318)
            {
              goto LABEL_84;
            }

            v323 = objc_msgSend_model(selfCopy, v319, v320, v321, v322);
            v328 = objc_msgSend_seriesList(v323, v324, v325, v326, v327);
            v333 = objc_msgSend_firstObject(v328, v329, v330, v331, v332);
            v338 = objc_msgSend_seriesType(v333, v334, v335, v336, v337);
            v304 = objc_msgSend_elementBuilder(v338, v339, v340, v341, v342);

            v309 = objc_msgSend_argumentAtIndex_(v29, v343, v344, v345, v346, 0);
            v351 = objc_msgSend_model(selfCopy, v347, v348, v349, v350);
            v356 = objc_msgSend_axisForID_(v351, v352, v353, v354, v355, v309);

            v361 = objc_msgSend_model(v356, v357, v358, v359, v360);
            v366 = objc_msgSend_chartInfo(v361, v362, v363, v364, v365);
            v371 = objc_msgSend_objectValueForProperty_(v366, v367, v368, v369, v370, 1080);

            objc_msgSend_width(v371, v372, v373, v374, v375);
            v377 = v376;
            v378 = *(MEMORY[0x277CBF2C0] + 16);
            *v395 = *MEMORY[0x277CBF2C0];
            v396 = v378;
            v397 = *(MEMORY[0x277CBF2C0] + 32);
            if (objc_msgSend_hasAxisLineInBody_forAxis_outTransform_outLine_(v304, v379, *&v397, *&v378, v380, selfCopy, v356, v395, &v399))
            {
              v381 = v377 * 0.5;
              TSURectWithPoints();
              v386 = -v381;
              if (v381 >= 1.0)
              {
                v386 = -1.0;
              }

              CGRectInset(*&v382, v386, v386);
              CGPathAddRectSafe();
            }
          }

LABEL_84:
        }

        v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v24, v25, v26, v27, &v400, v405, 16);
      }

      while (v23);
    }
  }

  return path;
}

@end